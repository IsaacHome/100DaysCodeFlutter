import 'package:flutter/material.dart';
import 'package:flutter_course/widgets/helpers/ensure_visible.dart';
import 'package:map_view/map_view.dart';


class LocationInput extends StatefulWidget{

   @override
  State<StatefulWidget> createState() {
    return _LocationInputState();
  }
}


class _LocationInputState extends State<LocationInput>{

  Uri  _staticMapUri;
  final FocusNode _addressInputFocusNode = FocusNode();

  @override
  void initState() {
    _addressInputFocusNode.addListener(_updateLocation);
    getStaticMap();
    super.initState();
  }

  @override
  void dispose() {
    _addressInputFocusNode.removeListener(_updateLocation);
    super.dispose();
  }

  void getStaticMap() {
    final StaticMapProvider staticMapViewProvider = StaticMapProvider('AIzaSyAuf_us1w7o_NS1VgupZn-cJnP8sEwol6Q');

    final Uri staticMapUri= staticMapViewProvider.getStaticUriWithMarkers([
      Marker('Position','Position',41.40338,2.17403)
    ],center: Location(41.40338,2.17403),
      width: 500,
      height: 300,
      maptype: StaticMapViewType.roadmap);
    setState(() {
       _staticMapUri = staticMapUri;
    });
  }
  void _updateLocation(){

  }

  @override
  Widget build(BuildContext context) {
    return Column(
       children: <Widget>[
         EnsureVisibleWhenFocused(
           focusNode: _addressInputFocusNode,
           child: TextFormField(
             focusNode: _addressInputFocusNode,
           ),
         ),
         SizedBox(height: 10.0,),
         Image.network(_staticMapUri.toString())
       ],
    );
  }
}