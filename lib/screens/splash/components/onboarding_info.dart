class OnboardingInfo
{
  final imageAsset;
  final title;
  final description;

  OnboardingInfo(this.imageAsset,this.title,this.description);
}

List<OnboardingInfo> onboardingPages=[
  OnboardingInfo('assets/images/subscription.png', 'Choose \nyour subscription', 'Now you can choose single day, 30 days tiffin delivery right from your mobile.'),
  OnboardingInfo('assets/images/choose_time.png', 'Choose \nyour time', 'Whether its lunch or dinner we got you covered with our new variety of delicacies.'),
  OnboardingInfo('assets/images/polling3.png', 'Poll for your \nfavourite items', 'Poll for the items you want to include in the next day menu. The highest polled items will be included in the menu.'),
  OnboardingInfo('assets/images/chef_wonders.png', 'Chef \ncreating wonders', 'Our chefs will  prepare fresh, healthy and lip smacking delicacies with their magic or you can masala.'),
  OnboardingInfo('assets/images/delivery.png', 'Super \nfast delivery', 'Get superfast delivery within the alloted time frame and track our delivery superheros with this app.'),
];