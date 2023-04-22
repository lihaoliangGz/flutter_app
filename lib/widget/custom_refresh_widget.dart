import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

/**
 * 刷新框架 +（加载/错误/空数据-布局）
 * @Creator:WuJun
 */
//四种视图状态
enum LoadState { State_Loading, State_Default, State_Error, State_Empty }

///根据不同状态来展示不同的视图
///根据不同状态来展示不同的视图
class CustomRefreshWidget extends StatefulWidget {
  final Widget child; //成功视图
  final LoadState state; //页面状态
  final VoidCallback onLoading; //错误事件处理
  final VoidCallback onRefresh; //空数据事件处理
  final RefreshController controller;
  bool enablePullDown;
  bool enablePullUp;
  String emptyIcon;
  String emptyStr;
  String errorIcon;
  String errorStr;
  String loadIcon;
  String loadStr;

  CustomRefreshWidget({
    required this.child,
    this.state = LoadState.State_Default,
    required this.onLoading,
    required this.onRefresh,
    required this.controller,
    this.enablePullUp = true,
    this.enablePullDown = true,
    this.loadIcon = "images/def_icon_load_nodata.png",
    this.loadStr = "加载中...",
    this.emptyIcon = "images/def_icon_load_nodata.png",
    this.emptyStr = "暂无数据",
    this.errorIcon = "images/def_icon_load_nodata.png",
    this.errorStr = "加载失败",
  });

  @override
  _LoadStateWidgetState createState() => _LoadStateWidgetState();
}

class _LoadStateWidgetState extends State<CustomRefreshWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //宽高都充满屏幕剩余空间
      width: double.infinity,
      height: double.infinity,
      child: SmartRefresher(
        enablePullDown: widget.enablePullDown,
        enablePullUp:
            widget.enablePullUp && widget.state == LoadState.State_Default,
        controller: widget.controller,
        onRefresh: widget.onRefresh,
        onLoading: widget.onLoading,
        child: _buildWidget,
      ),
    );
  }

  ///根据不同状态来显示不同的视图
  Widget get _buildWidget {
    switch (widget.state) {
      case LoadState.State_Loading:
        return _loadingView;
        break;
      case LoadState.State_Error:
        return _errorView;
        break;
      case LoadState.State_Empty:
        return _emptyView;
        break;
      case LoadState.State_Default:
      default:
        return widget.child;
    }
  }

  ///加载中视图
  Widget get _loadingView {
    return Container(
      width: double.infinity,
      height: double.infinity,
      alignment: Alignment.center,
      color: Colors.white,
      child: Container(
        height: 200,
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              child: Image.asset(widget.loadIcon),
            ),
            SizedBox(height: 5),
            Text(widget.loadStr,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 14,
                ))
          ],
        ),
      ),
    );
  }

  ///错误视图
  Widget get _errorView {
    return Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: InkWell(
//          onTap: widget.errorRetry,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Image.asset(widget.errorIcon),
              ),
              SizedBox(height: 5),
              Text(
                widget.errorStr,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 14,
                ),
              )
            ],
          ),
        ));
  }

  Widget get _emptyView {
    return Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        child: InkWell(
//          onTap: widget.emptyRetry,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Image.asset(widget.emptyIcon),
              ),
              SizedBox(height: 10),
              Text(widget.emptyStr,
                  style: TextStyle(
                    color: Color(0xff999999),
                    fontSize: 14,
                  ))
            ],
          ),
        ));
  }
}
