#
# Be sure to run `pod lib lint PaperFoldMenuController.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "PaperFoldMenuController"
  s.version          = "1.0.1-1.0.1"
  s.summary          = "Left side menu with paper fold effect"
  s.description      = <<-DESC
                       PaperFoldMenuController is a UITabBarController replacement, but displays the view controllers in a table view on the left side of the screen. This table view is shown/hidden using PaperFold-for-iOS. Selecting from the menu on the left changes the view controller on the right. PaperFoldMenuController uses view controller containment.
                       DESC
  s.homepage         = "https://github.com/cielliang/PaperFoldMenuController"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "hongcheng" => "hongcheng@gmail.com", "Weiyin LIANG" => "weiyin.liang@gmail.com" }
  s.source           = { :git => "https://github.com/cielliang/PaperFoldMenuController.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'PaperFoldMenuController'
  #s.resource_bundles = {
  #  'PanelTableView2' => ['Pod/Assets/*.png']
  #}

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  s.dependency 'PaperFold', '~> 1.1'
end
