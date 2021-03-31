part of 'date_picker_i18n.dart';

/// Chinese (ZH) Traditional
class _StringsZhHk extends _StringsI18n {
  const _StringsZhHk();

  @override
  String getCancelText() {
    return '取消';
  }

  @override
  String getDoneText() {
    return '確定';
  }

  @override
  List<String> getWeeksFull() {
    return [
      "星期一",
      "星期二",
      "星期三",
      "星期四",
      "星期五",
      "星期六",
      "星期日",
    ];
  }

  @override
  List<String> getWeeksShort() {
    return [
      "周一",
      "周二",
      "周三",
      "周四",
      "周五",
      "周六",
      "周日",
    ];
  }

  @override
  List<String> getMonthsShort() {
    return [
      "1月",
      "2月",
      "3月",
      "4月",
      "5月",
      "6月",
      "7月",
      "8月",
      "9月",
      "10月",
      "11月",
      "12月"
    ];
  }

  @override
  List<String> getMonths() {
    return [
      "一月",
      "二月",
      "三月",
      "四月",
      "五月",
      "六月",
      "七月",
      "八月",
      "九月",
      "十月",
      "十一月",
      "十二月"
    ];
  }
}
