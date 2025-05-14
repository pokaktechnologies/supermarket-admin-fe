import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:supermarket_admin_fe/providers/category_providers.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider(create: (_) => CategoryProviders()),
];