import 'package:chefpartner_mobile/src/i18n/i18n.dart';
import 'package:flutter/material.dart';

class DrawerContainer extends StatelessWidget {
  final Widget child;
  final String title;

  const DrawerContainer({
    Key? key,
    required this.title,
    required this.child,
  }) : super(key: key);

  void _navigateTo(BuildContext context, String routeName) =>
      Navigator.pushReplacementNamed(context, routeName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.red,
            ),
            child: null,
          ),
          ListTile(
            title: Text(I18n.strings.home.singularName),
            onTap: () => _navigateTo(context, '/'),
          ),
          ListTile(
            title: Text(I18n.strings.customer.pluralName),
            onTap: () => _navigateTo(context, '/customers'),
          ),
          ListTile(
            title: const Text('Pedidos'),
            onTap: () => _navigateTo(context, '/orders'),
          ),
          ListTile(
            title: Text(I18n.strings.product.pluralName),
            onTap: () => _navigateTo(context, '/products'),
          ),
          ListTile(
            title: Text(I18n.strings.paymentMethod.pluralName),
            onTap: () => _navigateTo(context, '/payment_methods'),
          )
        ]),
      ),
      body: child,
    );
  }
}
