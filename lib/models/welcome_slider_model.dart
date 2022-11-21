class WelcomeSliderModel {
  String imageAssetPath;
  String title;
  String desc;

  WelcomeSliderModel({this.imageAssetPath, this.title, this.desc});

  void setImageAssetPath(String getImageAssetPath) {
    imageAssetPath = getImageAssetPath;
  }

  void setTitle(String getTitle) {
    title = getTitle;
  }

  void setDesc(String getDesc) {
    desc = getDesc;
  }

  String getImageAssetPath() {
    return imageAssetPath;
  }

  String getTitle() {
    return title;
  }

  String getDesc() {
    return desc;
  }
}

List<WelcomeSliderModel> getSlides() {
  List<WelcomeSliderModel> slides = [];
  WelcomeSliderModel welcomeSliderModel = WelcomeSliderModel();

  //  Temp data
  //  TODO: Add appropriate data
  welcomeSliderModel.setDesc("");
  welcomeSliderModel.setTitle("Welcome to Exam Practice");
  welcomeSliderModel.setImageAssetPath("assets/images/logo.png");
  slides.add(welcomeSliderModel);

  welcomeSliderModel = WelcomeSliderModel();

  welcomeSliderModel.setDesc("");
  welcomeSliderModel.setTitle("Teacher and Student framework");
  welcomeSliderModel.setImageAssetPath("assets/images/logo.png");
  slides.add(welcomeSliderModel);

  welcomeSliderModel = WelcomeSliderModel();

  welcomeSliderModel.setDesc("");
  welcomeSliderModel.setTitle("Auto-submission and clash avoidance of quizzes");
  welcomeSliderModel.setImageAssetPath("assets/images/logo.png");
  slides.add(welcomeSliderModel);

  welcomeSliderModel = WelcomeSliderModel();
  welcomeSliderModel.setDesc("Exam Practice");
  welcomeSliderModel.setTitle("Online Test App");
  welcomeSliderModel.setImageAssetPath("assets/images/logo.png");
  slides.add(welcomeSliderModel);

  return slides;
}
