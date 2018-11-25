// function outputMenuItems() {
//     let menu_items_section = document.getElementById("menu_items") 
//     if (menu_items_section) {
//       let xhttp = new XMLHttpRequest();
//       xhttp.onreadystatechange = function() {
//         if (this.readyState == 4 && this.status == 200) {
//             let menu_items = JSON.parse(this.responseText);
//             let output = "";
//             for(let i=0; i < menu_items.length; i++) {
//                 output += `<tr>
//                              <td>${menu_items[i].name}</td>
//                              <td>${menu_items[i].unit_price}</td>
//                              <td><input type="text" data-menu_item_id="${menu_items[i].id}" /></td>
//                              <td><button class="addToCartButton">Add to cart</button></td>
//                           </tr>`
//             }
//             menu_items_section.innerHTML = output;
//             addEventToButtons()
//       }
//     };
//     xhttp.open("GET", "api/menu_items", true);
//     xhttp.send();
//     }
// }

// function addToCart(ele) {
//     let data = new FormData();
//     let target = ele.parentElement.previousElementSibling.firstElementChild
//     let quantity = target.value
//     let menu_item_id = target.getAttribute("data-menu_item_id")
//     if (quantity) {
//       data.append('quantity', quantity);
//       data.append('menu_item_id', menu_item_id);
//       var xhr = new XMLHttpRequest();
//       xhr.open('POST', 'api/menu_items', true);
//
//       *need to amend here
//       // https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest
//       xhr.onload = function () {
//           if(this.status == 200) {
//               let result = JSON.parse(this.responseText);
//               var node = document.createElement("P");     
//               node.classList = ["notice_message"]
//               var textnode = document.createTextNode(result.notice); 
//               node.appendChild(textnode);
//           } else if {
//               var textnode = document.createTextNode(result.notice); 
//               node.appendChild(textnode);
//              document.getElementById("flash_messages").appendChild(node); 
//              window.scrollTo(0, 0);
//              target.value = ""
//           }
//       };
//       xhr.send(data);
       
//     }
// }

// function addEventToButtons() {
//   let buttons = document.getElementsByClassName("addToCartButton")
//   for(let i=0; i < buttons.length; i++) {
//       buttons[i].addEventListener("click", function() {
//           addToCart(buttons[i]);
//       });
//   }
// }
// to display link for category(need to create class for every category first)
// function addCategotyId() {
//   let link = document.getElementsByClassName("addCategotyId")
//   for(let i=0; i < link.length; i++) {
//       link[i].addEventListener("click", function() {
//           addCategotyId(link[i]);
//       });
//   }
// }

// document.addEventListener("DOMContentLoaded", function(event) {
//     // Your code to run since DOM is loaded and ready
//     outputMenuItems();
// });