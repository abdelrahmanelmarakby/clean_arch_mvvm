abstract class BaseViewModel extends BaseViewModelInputs
    with BaseViewModelOutputs {
  //* Shared variables and functions for all view models
}

abstract class BaseViewModelInputs {
  void onViewCreated(); //* Called when the view is created
  void onViewDestroyed(); //* Called when the view is destroyed
}

abstract class BaseViewModelOutputs {}
