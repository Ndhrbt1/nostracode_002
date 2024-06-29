part of '_index.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: LoginAppbar(),
      ),
      // floatingActionButton: const LoginFab(),

      body: OnFormBuilder(
        listenTo: _dt.rxForm,
        builder: () => Center(
          child: SizedBox(
            width: 480,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OnFormBuilder(
                  listenTo: _dt.rxForm,
                  builder: () => TextField(
                    controller: _dt.rxEmail.controller,
                    decoration: InputDecoration(
                      hintText: 'name@email.com',
                      errorText: _dt.rxEmail.error,
                      labelText: 'email',
                      border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
                    ),
                  ),
                ),
                const SizedBoxH(15),
                OnFormBuilder(
                  listenTo: _dt.rxForm,
                  builder: () => TextField(
                    obscureText: true,
                    controller: _dt.rxPassword.controller,
                    decoration: InputDecoration(
                      hintText: 'password',
                      errorText: _dt.rxPassword.error,
                      labelText: 'password',
                      border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
                    ),
                  ),
                ),
                const SizedBoxH(15),
                OnFormSubmissionBuilder(
                  listenTo: _dt.rxForm,
                  onSubmitting: () => const CircularProgressIndicator(),
                  child: ElevatedButton(
                    onPressed: _dt.rxForm.isDirty && _dt.rxForm.isValid ? () => _ct.submit() : null,
                    child: const Text(
                      "submit",
                    ),
                  ),
                ),
                const SizedBoxH(15),
                ElevatedButton(
                  onPressed: () {
                    _ct.signInAnonymously();
                  },
                  child: const Text(
                    "Sign In Anonymous",
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    _ct.signInByGoogle();
                  },
                  child: const Text(
                    "Sign In by Google",
                  ),
                ),
                TextButton(
                  onPressed: () {
                    nav.toReplacement(Routes.register);
                  },
                  child: const Text(
                    "Don't have account? Sign up",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      // ElevatedButton(
      //   onPressed: () {
      //     _ct.signInAnonymously();
      //   },
      //   child: const Text(
      //     "Sign In Anonymous",
      //   ),
      // ),
      // ElevatedButton(
      //   onPressed: () {
      //     _ct.signInByGoogle();
      //   },
      //   child: const Text(
      //     "Sign In by Google",
      //   ),
      // ),
      // TextButton(
      //   onPressed: () {
      //     nav.toReplacement(Routes.register);
      //   },
      //   child: const Text(
      //     "Don't have account? Sign up",
      //   ),
      // ),
      //     ],
      //   ),
      // ),
    );
  }
}
