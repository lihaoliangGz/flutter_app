import 'package:flutter/material.dart';
import 'package:flutterapp/widget/custom_refresh_widget.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class RefreshDemo extends StatefulWidget {
  @override
  _RefreshDemoState createState() => _RefreshDemoState();
}

class _RefreshDemoState extends State<RefreshDemo> {
  static const int pageSize = 8;

  RefreshController _refreshController = RefreshController();
  LoadState _loadState = LoadState.State_Loading;
  int _pageNo = 1;
  List<String> _list = [];
  int number = 1;

  @override
  void initState() {
    super.initState();
    getListData(1);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text("列表局部刷新demo"),
        ),
        body: CustomRefreshWidget(
          controller: _refreshController,
          state: _loadState,
          //是否激活下拉刷新
          onRefresh: _onRefresh,
          onLoading: _onLoading,
          emptyIcon: "images/icon_goods_empty_placeholder.png",
          emptyStr: "此分类下暂无商品",
          child: ListView.builder(
            itemCount: _list.length,
            itemBuilder: (context, index) {
              return Container(
                child: MaterialButton(
                  onPressed: () {
                    Fluttertoast.showToast(
                        msg: _list[index], gravity: ToastGravity.CENTER);
                  },
                  height: 30,
                  child: Text(_list[index]),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  void _onRefresh() {
    getListData(1);
  }

  void _onLoading() {
    getListData(++_pageNo);
  }

  getListData(int pageNo) {
    _pageNo = pageNo;
    if (pageNo == 1) {
      number = 1;
      _list.clear();
    }

    setState(() {
      for (int i = 0; i < pageSize; i++) {
        _list.add(number.toString());
        number++;
      }
      if (_list.length > 0) {
        _loadState = LoadState.State_Default;
      } else {
        _loadState = LoadState.State_Empty;
      }

      if (pageNo == 1) {
        _refreshController.refreshCompleted();
        if (_list.length == 0) {
          //noData
//      _refreshController.refreshFailed();
        } else {
          _refreshController.loadComplete();
        }
      } else {
        if (_pageNo == 3) {
          //最多3页
          _refreshController.loadNoData();
        } else {
          _refreshController.loadComplete();
        }
      }
    });
  }
}
