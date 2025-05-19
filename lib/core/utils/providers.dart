import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:supermarket_admin_fe/providers/category_providers.dart';
import 'package:supermarket_admin_fe/providers/menu_provider.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider(create: (_) => CategoryProviders()),
  ChangeNotifierProvider(create: (_) => MenuProvider()),
];
