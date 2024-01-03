import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vcm360/common/network/dio_client.dart';
import 'package:vcm360/common/repository/local_storage/get_storage_impl.dart';
import 'package:vcm360/l10n/service/language_service.dart';
import 'package:vcm360/router/app_pages.dart';


final getIt = GetIt.instance;

Future<void> init() async {
  /**
   * ┌───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
   * │ cubits
   * └───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
   */
  // getIt.registerFactory(() => PostCubit(
  //       getAllPostUseCase: getIt<GetAllPostUseCase>(),
  //       postViewModel: PostViewModel(),
  //       postFilterEntity: PostFilterEntity(),
  //     ));


  /**
   * ┌───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
   * │ use cases
   * └───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
   */
  // post
  // getIt.registerLazySingleton(
  //   () => GetAllPostUseCase(postRepository: getIt<PostRepository>()),
  // );

  // getIt.registerLazySingleton(
  //   () => LoginUseCase(
  //       authenticationRepository: getIt<AuthenticationRepository>()),
  // );
  //

  /**
   * ┌───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
   * │ repositories
   * └───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
   */
  // getIt.registerLazySingleton<PostRepository>(
  //   () => PostRepositoryImpl(postRemote: getIt()),
  // );

  // getIt.registerLazySingleton<AuthenticationRepository>(
  //   () => AuthenticationRepositoryImpl(remoteDataSource: getIt()),
  // );

  /**
   * ┌───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
   * │ remote data sources
   * └───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
   */
  // getIt.registerLazySingleton<PostRemoteDataSource>(
  //   () => PostRemoteDataSourceImpl(),
  // );

  // getIt.registerLazySingleton<AuthenticationRemoteDataSource>(
  //   () => AuthenticationRemoteDataSourceImpl(),
  // );


  /**
   * ┌───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
   * │ dio
   * └───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
   */
  getIt.registerLazySingleton<DioClient>(() => DioClient(getIt<Dio>()));
  getIt.registerLazySingleton<Dio>(() => Dio());

  /**
   * ┌───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
   * │ languages
   * └───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
   */
  GetIt.instance
      .registerLazySingleton<LanguageService>(() => LanguageService());

  /**
   * ┌───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
   * │ routers
   * └───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
   */
  GetIt.instance.registerLazySingleton<AppPages>(() => AppPages());

  /**
   * ┌───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
   * │ sharePreferences
   * └───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
   */

  final sharePref = await SharedPreferences.getInstance();
  GetIt.instance
      .registerSingletonAsync<SharedPreferences>(() async => sharePref);

  GetIt.instance.registerLazySingleton<SharedPrefLocalStorageImpl>(
      () => SharedPrefLocalStorageImpl());

  /**
   * ┌───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
   * │ filePicker
   * └───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
   */
  // GetIt.instance.registerFactory<FilePickerHelper>(() => FilePickerHelper());
}
