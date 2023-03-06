class OnboardingInfo
{
  final imageAsset;
  final title;
  final description;

  OnboardingInfo(this.imageAsset,this.title,this.description);
}

List<OnboardingInfo> onboardingPages=[
  OnboardingInfo('assets/images/1.png', 'Choose your subscription', 'Now you can choose single day, 30 days tiffin delivery right from your mobile.'),
  OnboardingInfo('assets/images/2.png', 'Choose your time', 'Whether its lunch or dinner we got you covered with our new variety of delicacies.'),
  OnboardingInfo('assets/images/3.png', 'Poll for your favourite items', 'Poll for the items you want to include in the next day menu. The highest polled items will be included in the menu.'),
  OnboardingInfo('assets/images/4.png', 'Chef creating wonders', 'Our chefs will  prepare fresh, healthy and lip smacking delicacies with their magic or you can masala.'),
  OnboardingInfo('assets/images/5.png', 'Super fast delivery', 'Get superfast delivery within the alloted time frame and track our delivery superheros with this app.'),


];