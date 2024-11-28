import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;

class PageProvider extends ChangeNotifier {
  PageController scrollControler = PageController();

  //! colocar en lista pricing para no teber errores //!
  final List<String> _pages = [
    'home',
    'aboutus',
    'images',
    'services',
    'contact'
  ];

  int _currentIndex = 0;

  createScrollController(String routeName) {
    scrollControler = PageController(initialPage: getPageIndex(routeName));
    html.document.title = _pages[getPageIndex(routeName)];
    scrollControler.addListener(() {
      final index = (scrollControler.page ?? 0).round();
      if (index != _currentIndex) {
        html.window.history.pushState(null, 'none', '#/${_pages[index]}');
        _currentIndex = index;
        html.document.title = _pages[index];
      }
    });
  }

  int getPageIndex(String routeName) {
    return (!_pages.contains(routeName)) ? 0 : _pages.indexOf(routeName);
  }

  goTo(int index) {
    // html.window.history.pushState(null, 'none', '#/${ _pages[index]}');
    scrollControler.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
  }
}
