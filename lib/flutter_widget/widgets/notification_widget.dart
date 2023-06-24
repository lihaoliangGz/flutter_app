import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class NotificationWidget {
  static OverlayEntry? _overlayEntry;
  static int _countdownMilliseconds = 5000; // 5秒倒计时
  static Timer? _countdownTimer;

  static void showNotification({
    required BuildContext context,
    required String imageUrl,
    required String title,
    String content = "",
    bool clickToClose = true,
    int millisecond = 5000,
    void Function()? onTap,
  }) {
    //hideNotification();

    _countdownMilliseconds = millisecond;

    _overlayEntry = _createOverlayEntry(
      imageUrl: imageUrl,
      title: title,
      clickToClose: clickToClose,
      content: content,
      onTap: onTap,
    );

    _startCountdown(); // 重置定时器

    Overlay.of(context).insert(_overlayEntry!);
  }

  // 关闭
  static void hideNotification() {
    _overlayEntry?.remove();
    _overlayEntry = null;
    _countdownTimer?.cancel();
  }

  static OverlayEntry _createOverlayEntry({
    required String imageUrl,
    required String title,
    String content = '',
    bool clickToClose = true,
    void Function()? onTap,
  }) {
    return OverlayEntry(
      builder: (context) => Positioned(
        top: 40,
        left: 0,
        right: 0,
        child: GestureDetector(
          onTap: () {
            onTap!();
            if (clickToClose) {
              hideNotification();
            }
          },
          child: Dismissible(
            key: UniqueKey(),
            direction: DismissDirection.vertical,
            child: Center(
              child: Container(
                height: 76,
                margin: EdgeInsetsDirectional.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: const Color(0XFF03FFBA),
                  borderRadius: BorderRadiusDirectional.only(
                    topStart: Radius.circular(38),
                    topEnd: Radius.circular(38),
                    bottomStart: Radius.circular(38),
                  ),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 8),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF3F5FA),
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                          image: CachedNetworkImageProvider(imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            title,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: const Color(0XFF2A3835),
                              decoration: TextDecoration.none,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            content,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 14,
                              color: const Color(0XFF517069),
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 16),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // 倒计时
  static void _startCountdown() {
    _countdownTimer = Timer.periodic(
      const Duration(milliseconds: 1000),
      (timer) {
        if (_countdownMilliseconds > 0) {
          _countdownMilliseconds = _countdownMilliseconds - 1000;
        } else {
          hideNotification();

          _countdownTimer?.cancel();
        }
      },
    );
  }
}
