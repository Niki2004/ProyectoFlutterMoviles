import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'pagina_informacion_widget.dart' show PaginaInformacionWidget;
import 'package:flutter/material.dart';

class PaginaInformacionModel extends FlutterFlowModel<PaginaInformacionWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
