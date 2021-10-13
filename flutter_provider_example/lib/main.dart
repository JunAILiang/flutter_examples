import 'package:flutter/material.dart';
import 'package:flutter_provider_example/Inherited_context_example/count_notifier2.dart';
import 'package:flutter_provider_example/Inherited_context_example/inherited_context_example.dart';
import 'package:flutter_provider_example/change_notifier_provider_example/change_notifier_provider_example.dart';
import 'package:flutter_provider_example/change_notifier_provider_example/user_model1.dart';
import 'package:flutter_provider_example/change_notifier_proxy_provider_example/change_notifier_proxy_provider_example.dart';
import 'package:flutter_provider_example/change_notifier_proxy_provider_example/models/book_manager_model.dart';
import 'package:flutter_provider_example/change_notifier_proxy_provider_example/models/book_model.dart';
import 'package:flutter_provider_example/consumer_example/consumer_example.dart';
import 'package:flutter_provider_example/consumer_example/count_notifier1.dart';
import 'package:flutter_provider_example/future_provider_example/future_provider_example.dart';
import 'package:flutter_provider_example/future_provider_example/user_future.dart';
import 'package:flutter_provider_example/future_provider_example/user_model2.dart';
import 'package:flutter_provider_example/inherited_widget_example/inherited_widget_count_example.dart';
import 'package:flutter_provider_example/multi_provider_example/multi_provider_example.dart';
import 'package:flutter_provider_example/multi_provider_example/user_model4.dart';
import 'package:flutter_provider_example/provider_count_example/count_notifier.dart';
import 'package:flutter_provider_example/provider_count_example/provider_count_example.dart';
import 'package:flutter_provider_example/provider_example/provider_example.dart';
import 'package:flutter_provider_example/provider_example/user_model.dart';
import 'package:flutter_provider_example/provider_mvvm_example/provider_mvvm_example.dart';
import 'package:flutter_provider_example/provider_mvvm_example/view_model/joke_view_model.dart';
import 'package:flutter_provider_example/proxy_provider_example/proxy_provider_example.dart';
import 'package:flutter_provider_example/proxy_provider_example/user_model5.dart';
import 'package:flutter_provider_example/proxy_provider_example/wallet_model.dart';
import 'package:flutter_provider_example/selector_example/selector_example.dart';
import 'package:flutter_provider_example/selector_example/user_model6.dart';
import 'package:flutter_provider_example/stream_provider_example/stream_provider_example.dart';
import 'package:flutter_provider_example/stream_provider_example/user_model3.dart';
import 'package:flutter_provider_example/stream_provider_example/user_stream.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   home: InheritedWidgetCountExample(),
    // );


    // return ChangeNotifierProvider(
    //   create: (_) => CountNotifier(),
    //   child: MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     home: ProviderCountExample(),
    //   ),
    // );

    // return Provider<UserModel>(
    //   create: (_) => UserModel(),
    //   child: MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     home: ProviderExample(),
    //   ),
    // );

    // return ChangeNotifierProvider<UserModel1>(
    //   create: (_) => UserModel1(),
    //   child: MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     home: ChangeNotifierProviderExample(),
    //   ),
    // );

    // return FutureProvider<UserModel2>(
    //   initialData: UserModel2(name: "hello"),
    //   create: (_) => UserFuture().asyncGetUserModel2(),
    //   child: MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     home: FutureProviderExample(),
    //   ),
    // );

    // return StreamProvider<UserModel3>(
    //   initialData: UserModel3(name: "hello"),
    //   create: (_) => UserStream().getStreamUserModel(),
    //   child: MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     home: StreamProviderExample(),
    //   ),
    // );


    /// 多个provider下面这种方式不合理
    // return ChangeNotifierProvider<UserModel1>(
    //   create: (_) => UserModel1(),
    //   child: ChangeNotifierProvider<UserModel4>(
    //     create: (_) => UserModel4(),
    //     child: MaterialApp(
    //       debugShowCheckedModeBanner: false,
    //       home: MultiProviderExample(),
    //     ),
    //   ),
    // );

    // return MultiProvider(
    //   providers: [
    //     ChangeNotifierProvider<UserModel1>(create: (_) => UserModel1()),
    //     ChangeNotifierProvider<UserModel4>(create: (_) => UserModel4()),
    //     /// 添加更多
    //   ],
    //   child: MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     home: MultiProviderExample(),
    //   ),
    // );

    // return MultiProvider(
    //   providers: [
    //     ChangeNotifierProvider<UserModel5>(create: (_) => UserModel5()),
    //     ProxyProvider<UserModel5, WalletModel>(
    //       update: (_, userModel5, walletModel) => WalletModel(userModel5: userModel5),
    //     )
    //   ],
    //   child: MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     home: ProxyProviderExample(),
    //   ),
    // );

    // return MultiProvider(
    //   providers: [
    //     Provider(create: (_) => BookModel()),
    //     ChangeNotifierProxyProvider<BookModel, BookManagerModel>(
    //       create: (_) => BookManagerModel(BookModel()),
    //       update: (_, bookModel, bookManagerModel) => BookManagerModel(bookModel),
    //     )
    //   ],
    //   child: MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     home: ChangeNotifierProxyProviderExample(),
    //   ),
    // );

    // return ChangeNotifierProvider<CountNotifier1>(
    //   create: (_) => CountNotifier1(),
    //   child: MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     home: ConsumerExample(),
    //   ),
    // );

    // return ChangeNotifierProvider(
    //   create: (_) => UserModel6(),
    //   child: MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     home: SelectorExample(),
    //   ),
    // );

    // return ChangeNotifierProvider(
    //   create: (_) => CountNotifier2(),
    //   child: MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     home: InheritedContextExample(),
    //   ),
    // );

    return ChangeNotifierProvider(
      create: (_) => JokeViewModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ProviderMvvmExample(),
      ),
    );


  }
}




