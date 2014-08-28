
Pod::Spec.new do |s|
  s.name         = "MobileTools"
  s.version      = "0.0.2"
  s.summary      = "基础工具包MobileTools."
  s.license      = { :type => 'Apache License, Version 2.0', :text => <<-LICENSE
    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
    LICENSE
  }
  s.description  = <<-DESC
                   A longer description of MobileTools in Markdown format.

                   * Think: Why did you write this? What is the focus? What does it do?
                   * CocoaPods will be using this to generate tags, and improve search results.
                   * Try to keep it short, snappy and to the point.
                   * Finally, don't worry about the indent, CocoaPods strips it!
                   DESC

  s.homepage     = "https://git.oschina.net/Fast-snail"
  s.author             = { "zhoujun" => "zhouj@zdnst.com" }
  s.platform     = :ios,'6.0'

  s.source       = { :git => "https://git.oschina.net/Fast-snail/MobileTools.git", :tag => "0.0.2" }

  s.source_files  = "**/*.{h,m}"

  non_arc_files = '**/*/ChamleonFormDataRequest.{h,m}','**/*/ChamleonDataCompressor.{h,m}','**/*/ChamleonInputStream.{h,m}','**/*/ChamleonDataDecompressor.{h,m}','**/*/KeychainItemWrapper.{h,m}','**/*/ChamleonReachability.{h,m}','**/*/ChamleonAuthenticationDialog.{h,m}','**/*/NSString+MD5Addition.{h,m}','**/*/UIDevice+IdentifierAddition.{h,m}','**/*/ChamleonHTTPRequest.{h,m}','**/*/ChamleonHTTPRequestDelegate.h'
    s.exclude_files = non_arc_files
   s.requires_arc = true
   s.subspec 'no-arc' do |sna|

    sna.requires_arc = false
    sna.source_files = non_arc_files
    end
  
end
