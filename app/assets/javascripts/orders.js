// function outputOrderItems() {
//     let order_items = document.getElementById("order_items")
//     let url = "api/orders"

// }

//     if (order_items) {
//       let xhttp = new XMLHttpRequest();
//       xhttp.onreadystatechange = function() {
//         if (this.readyState == 4 && this.status == 200) {
//             let order_items = JSON.parse(this.responseText);
//             let output = "";
//             let grand_total = 0
//             for(let i=0; i < order_items.length; i++) {
//              let sub_total = quantity * order_items.unit price
//               grand_total += sum of sub total
//                 output += `<tr>
//                              <td>${order_items[i].menu_item.name}</td>
//                              <td>${order_items[i].quantity}</td>
//                              <td>${order_items[i].menu_item.unit_price}</td>
//                              <td>${sub_total}</td>
//                           </tr>`
//             }
//             order_items.innerHTML = output;
