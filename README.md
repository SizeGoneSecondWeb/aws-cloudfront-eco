<a name="readme-top"></a>
# AMAZON CLOUDFRONT - E-COMMERCE WEB
<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

[![HOME PAGE][product-screenshot]](http://demoappwebshop-env.us-east-1.elasticbeanstalk.com/)
### Thành viên nhóm
| Họ và tên     | Mã số sinh viên |
| :---          |     :---:       |
| Mai Bảo Long  | 20110517        |
| Đỗ Quang Lâm  | 20110512        |
| Lê Quốc Việt  | 20110600        |

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- GETTING STARTED -->
## Getting Started
Trang thương mại điện tử là phần không thể thiếu trong xã hội hiện đại ngày nay, nó xuất hiện hầu như ở khắp mọi nơi và con người ai ai cũng có nhu cầu sử dụng chúng. Chính vì thế nhóm chúng em đã chọn xây dựng một website bán tranh để có thể hiểu rõ cách xây dựng, phát triển và quảng bá một trang web. Sau 15 tuần dày công nghiên cứu và thực hành, chúng em đã hoàn thiện được những phần thiết yếu nhất của một trang thương mại điện tử - Website bán tranh. 
### Prerequisites
Trước khi cài đặt và chỉnh sửa web app, hãy chắc rằng trên máy đã cài đặt:
* Công cụ hỗ trợ lập trình: Eclipse (khuyên dùng), hoặc bất kì công cụ khác có tích hợp môi trường phát triển Java (IDE) khác.
* Phần mềm web server: Apache Tomcat (phiên bản 8.5 trở lên).
* Hệ quản trị cơ sở dữ liệu: MySQL (khuyên dùng).
### Installation
Khi đã chuẩn bị những điều kiện tiên quyết ở trên, bất kì ai cũng có thể Run web app. Chúng em cung cấp file war trong thư mục EcommercePicturesPage (https://github.com/SizeGoneSecondWeb/aws-cloudfront-eco/blob/293bc0ceebabd1579e4d9543a249db56749e81b6/EcommercePicturesPage/EcommercePicturesPage.war) để có thể dễ dàng import project vào các công cụ hỗ trợ. Sau khi import, dev có thể chạy ngay web app bằng server Tomcat như đã cài đặt (project đang sử dụng database từ dịch vụ của AWS Amazon RDS).
<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- USAGE EXAMPLES -->
## Usage
Dev có thể chỉnh sửa cơ sở dữ liệu bằng cách import database có sẵn chúng em trong thư mục Database bằng phần mềm MySQL, sau đó truy cập vào file persistence trong thư mục ./EcommercePicturesPage/src/META-INF. Trong thẻ properties đã có sẵn phần đang bị comment ![image](https://user-images.githubusercontent.com/112426628/205655581-8ca21e8a-662e-41ec-9f6e-57b8f565ab6e.png)
Dev có thể uncomment dòng 10-13, chỉnh sửa lại đường dẫn đến localhost và user/password MySQL trên máy và comment lại phần từ dòng 14-17.
Đây là một số mô hình kiến trúc và diagram của ứng dụng:

_Kiến trúc ứng dụng:_
![image](https://user-images.githubusercontent.com/112426628/205657821-4d5a19b5-454d-4d28-9cea-045066dab9eb.png)

_User manager class diagram:_
![image](https://user-images.githubusercontent.com/112426628/205657894-860861b5-6da5-4768-b206-372eb960df22.png)

_MVC sample diagram:_
![image](https://user-images.githubusercontent.com/112426628/205657953-a15b3b12-8328-4e8a-85ac-de7a5bca8df9.png)

<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- CONTACT -->
## Contact
Nếu bạn cần sự hỗ trợ kỹ thuật nào, hãy liên hệ thành viên của đội chúng tôi ở bên dưới!
### Our Leader - [@QuangLam](https://www.facebook.com/quanglam0913)
### Web Developer - [@BaoLong](https://www.facebook.com/maibaolongne)
### Cloud Engineer - [@QuocViet](https://www.facebook.com/quocviet6028)
<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/othneildrew/Best-README-Template.svg?style=for-the-badge
[contributors-url]: https://github.com/othneildrew/Best-README-Template/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/othneildrew/Best-README-Template.svg?style=for-the-badge
[forks-url]: https://github.com/othneildrew/Best-README-Template/network/members
[stars-shield]: https://img.shields.io/github/stars/othneildrew/Best-README-Template.svg?style=for-the-badge
[stars-url]: https://github.com/othneildrew/Best-README-Template/stargazers
[issues-shield]: https://img.shields.io/github/issues/othneildrew/Best-README-Template.svg?style=for-the-badge
[issues-url]: https://github.com/othneildrew/Best-README-Template/issues
[license-shield]: https://img.shields.io/github/license/othneildrew/Best-README-Template.svg?style=for-the-badge
[license-url]: https://github.com/othneildrew/Best-README-Template/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/othneildrew
[product-screenshot]: images/screenshot.png
[Next.js]: https://img.shields.io/badge/next.js-000000?style=for-the-badge&logo=nextdotjs&logoColor=white
[Next-url]: https://nextjs.org/
[React.js]: https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB
[React-url]: https://reactjs.org/
[Vue.js]: https://img.shields.io/badge/Vue.js-35495E?style=for-the-badge&logo=vuedotjs&logoColor=4FC08D
[Vue-url]: https://vuejs.org/
[Angular.io]: https://img.shields.io/badge/Angular-DD0031?style=for-the-badge&logo=angular&logoColor=white
[Angular-url]: https://angular.io/
[Svelte.dev]: https://img.shields.io/badge/Svelte-4A4A55?style=for-the-badge&logo=svelte&logoColor=FF3E00
[Svelte-url]: https://svelte.dev/
[Laravel.com]: https://img.shields.io/badge/Laravel-FF2D20?style=for-the-badge&logo=laravel&logoColor=white
[Laravel-url]: https://laravel.com
[Bootstrap.com]: https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white
[Bootstrap-url]: https://getbootstrap.com
[JQuery.com]: https://img.shields.io/badge/jQuery-0769AD?style=for-the-badge&logo=jquery&logoColor=white
[JQuery-url]: https://jquery.com 
