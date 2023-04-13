/*
 * author: Katelyn Eitel
 * project: spring_mvc_hibernate
 * date: 2023-04-11
 *
 * license: Apache License 2.0
 * description:
 *		Copyright 2023 Katelyn Eitel 
 * 		Licensed under the Apache License, Version 2.0 (the "License");
 * 		you may not use this file except in compliance with the License.
 * 		You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0
 *	
 *		Unless required by applicable law or agreed to in writing, software
 *		distributed under the License is distributed on an "AS IS" BASIS,
 *		WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *		See the License for the specific language governing permissions and
 *		limitations under the License.
 */

 let position = 1;
 showCarousel(position);
 
 
  function changeCarouselPosition(input)
 {
	 position += input;
	 showCarousel(position);
 }
 
 
 function setCurrentPosition(input)
 {
	 position = input;
	 showCarousel(position);
 }
 

 function showCarousel(input)
 {
	 let i = 0;
	 let images = document.getElementsByClassName("carouselImages");
	 let dots = document.getElementsByClassName("dot");
	 
	 if(images != null && images != undefined
	 	&& dots != null && dots != undefined)
	 {
		 if(input > images.length)
		 	position = 1;
	 	
		 if(input < 1)
			 position = images.length;
		 	
		 for(i; i < images.length; i++)
			 images[i].style.display = "none";
		 	
		 for(i = 0; i < dots.length; i++)
			 dots[i].className = dots[i].className.replace("carousel-active", "");
		 
		 images[position - 1].style.display = "block";
		 dots[position - 1].className += " carousel-active";
	 }
 }