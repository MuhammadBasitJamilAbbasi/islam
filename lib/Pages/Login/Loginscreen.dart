import 'package:islam/Pages/Login/LoginModel.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';





class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  late LoginModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model =  LoginModel();

    _model.emailAddressController ??= TextEditingController();
    _model.emailAddressFocusNode ??= FocusNode();

    _model.passwordController ??= TextEditingController();
    _model.passwordFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // if (isiOS) {
    //   SystemChrome.setSystemUIOverlayStyle(
    //     SystemUiOverlayStyle(
    //       statusBarBrightness: Theme.of(context).brightness,
    //       systemStatusBarContrastEnforced: true,
    //     ),
    //   );
    // }

    //context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF4B39EF),
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height * 1,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          image: DecorationImage(
            fit: BoxFit.fitWidth,
            image: Image.asset(
              'assets/images/createAccount_BG@3x.jpg',
            ).image,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: double.infinity,
              height: 450,
              decoration: BoxDecoration(
                color: Theme.of(context).secondaryHeaderColor,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 7,
                    color: Color(0x4D090F13),
                    offset: Offset(0, 3),
                  )
                ],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                ),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 56, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            if (!(Theme.of(context).brightness ==
                                Brightness.dark))
                              Image.asset(
                                'assets/images/logoUpHome_dark@3x.png',
                                width: 200,
                                height: 60,
                                fit: BoxFit.fitWidth,
                              ),
                            if (Theme.of(context).brightness == Brightness.dark)
                              Image.asset(
                                'assets/images/logoUpHome@3x.png',
                                width: 200,
                                height: 60,
                                fit: BoxFit.fitWidth,
                              ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 4),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome Back,',
                              style: TextStyle(),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: _model.emailAddressController,
                                focusNode: _model.emailAddressFocusNode,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Email Address',

                                  hintText: 'Enter your email here...',

                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(

                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  filled: true,

                                  contentPadding:
                                  EdgeInsetsDirectional.fromSTEB(
                                      16, 24, 0, 24),
                                ),

                                // validator: _model
                                //     .emailAddressControllerValidator
                                //     .asValidator(context),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: TextFormField(
                                // controller: _model.passwordController,
                                // focusNode: _model.passwordFocusNode,
                              //  obscureText: !_model.passwordVisibility,
                                decoration: InputDecoration(
                                  labelText: 'Password',

                                  hintText: 'Enter your email here...',


                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(



                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  filled: true,

                                  contentPadding:
                                  EdgeInsetsDirectional.fromSTEB(
                                      16, 24, 24, 24),
                                  suffixIcon: InkWell(
                                    onTap: () => setState(
                                          () => _model.passwordVisibility =
                                      !_model.passwordVisibility,
                                    ),
                                    focusNode: FocusNode(skipTraversal: true),
                                    child: Icon(
                                      _model.passwordVisibility
                                          ? Icons.visibility_outlined
                                          : Icons.visibility_off_outlined,
                                      color: Color(0xFF95A1AC),
                                      size: 22,
                                    ),
                                  ),
                                ),

                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // FFButtonWidget(
                            //   onPressed: () {
                            //     print('Button-ForgotPassword pressed ...');
                            //   },
                            //   text: 'Forgot Password?',
                            //   options: FFButtonOptions(
                            //     width: 170,
                            //     height: 30,
                            //     padding:
                            //     EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            //     iconPadding:
                            //     EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            //     color: Color(0x00FFFFFF),
                            //
                            //     elevation: 0,
                            //     borderSide: BorderSide(
                            //       color: Colors.transparent,
                            //       width: 1,
                            //     ),
                            //     borderRadius: BorderRadius.circular(0),
                            //   ),
                            // ),
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 0, 4, 0),
                              child: ElevatedButton(
                                onPressed: () async {

                                },
                                child: Text('Login'),

                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 24),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                              // child: Text(
                              //   'Don\'t have an account?',
                              //   style: FlutterFlowTheme.of(context)
                              //       .bodyMedium
                              //       .override(
                              //     fontFamily: 'Lexend Deca',
                              //     color:
                              //     FlutterFlowTheme.of(context).grayIcon,
                              //     fontSize: 14,
                              //     fontWeight: FontWeight.normal,
                              //   ),
                              // ),
                            ),
                            // ElevatedButton(
                            //   onPressed: () async {
                            //     context.pushNamed(
                            //       'createAccount',
                            //       extra: <String, dynamic>{
                            //         kTransitionInfoKey: TransitionInfo(
                            //           hasTransition: true,
                            //           transitionType: PageTransitionType.fade,
                            //           duration: Duration(milliseconds: 0),
                            //         ),
                            //       },
                            //     );
                            //   },
                            //   text: 'Create Account',
                            //   // options: FFButtonOptions(
                            //   //   width: 150,
                            //   //   height: 30,
                            //   //   padding:
                            //   //   EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            //   //   iconPadding:
                            //   //   EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            //   //   color: Color(0x00FFFFFF),
                            //   //
                            //   //   elevation: 0,
                            //   //   borderSide: BorderSide(
                            //   //     color: Colors.transparent,
                            //   //     width: 1,
                            //   //   ),
                            //   //   borderRadius: BorderRadius.circular(0),
                            //   // ),
                            // ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
