import 'package:get_server/get_server.dart';

class Pageable extends WidgetBuilder {
  List<dynamic> list;
  int page;
  int size;

  Pageable(Context context, this.list, {this.page, this.size})
      : super(context, builder: (context) {
          final _page =
              int.parse(context.param('page') ?? '', onError: (_) => 1) ?? page;
          final _size =
              int.parse(context.param('size') ?? '', onError: (_) => 10) ??
                  size;
          final fistElement = (_page - 1) * _size;
          final lastElement = _page * _size;
          final result = list.sublist(fistElement,
              lastElement > list.length ? list.length : lastElement);
          final pageable = _Pageable(
              content: result,
              currentPage: _page,
              size: _size,
              totalElements: list.length,
              totalPages: (list.length / _size).ceil());
          return context.sendJson(pageable);
        });
}

class _Pageable {
  List<dynamic> content;
  int size;
  int totalElements;
  int totalPages;
  int currentPage;

  _Pageable(
      {this.content,
      this.size,
      this.totalElements,
      this.totalPages,
      this.currentPage});

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (content != null) {
      if (content is List<String> ||
          content is List<num> ||
          content is List<bool> ||
          content is List<DateTime>) {
        data['content'] = content;
      } else {
        data['content'] = content.map((v) => v.toJson()).toList();
      }
    }
    data['size'] = size;
    data['totalElements'] = totalElements;
    data['totalPages'] = totalPages;
    data['currentPage'] = currentPage;
    return data;
  }
}
