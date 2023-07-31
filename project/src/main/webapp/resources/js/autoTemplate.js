
function autocomplete(inp, arr) {

    inp.addEventListener("input", function (e) {

        var a, b, i, val = this.value;

        closeAllLists();
        // val 이 false 라면 리턴
        if (!val) { return false; }


        a = document.createElement("DIV");
        a.setAttribute("id", this.id + "autocomplete-list");
        a.setAttribute("class", "autocomplete-items");
        this.parentNode.appendChild(a);

		staff_list = arr.list

        for (i = 0; i < staff_list.length; i++) {
            if (staff_list[i].staff_name.substr(0, val.length).toUpperCase() == val.toUpperCase()) {

                b = document.createElement("DIV");
                b.innerHTML = "<strong>" + staff_list[i].staff_name.substr(0, val.length) + "</  >";
                b.innerHTML += staff_list[i].staff_name.substr(val.length);

                b.innerHTML += `<input type='hidden' data-index='${staff_list[i].staff_index}' value='${staff_list[i].staff_name}'>`

                b.addEventListener("click", function (e) {
                    const result = document.createElement("div");

                    const input = e.target.querySelector("input");
                    const value = input.value;
                    const id = parseInt(input.dataset.index);

                    console.log(id)

                    var hiddenInput = document.createElement("input")
                    hiddenInput.classList.add(`staff_${id}`)
                    hiddenInput.setAttribute("value", id);
                    hiddenInput.setAttribute("name", "id");
                    hiddenInput.hidden = true;
                    console.dir(hiddenInput);

                    result.classList.add("staff");
                    result.classList.add(`staff_${id}`)
                    result.innerText = value;
                    result.name = id;


                    result.onclick = function (e) {
                        $(`div.staff_${id}`).remove();
                        $(`input.staff_${id}`).remove();
                    }

                    document.getElementById("result").appendChild(result);
                    document.getElementById("input_result").appendChild(hiddenInput)

                    inp.value = "";

                    closeAllLists();
                });
                a.appendChild(b);
            }

        }

    });

    function closeAllLists(elmnt) {
        var x = document.getElementsByClassName("autocomplete-items");

        for (var i = 0; i < x.length; i++) {
            if (elmnt != x[i] && elmnt != inp) {
                x[i].parentNode.removeChild(x[i]);
            }
        }
    }
    document.addEventListener("click", function (e) {
        closeAllLists(e.target);
    });
}

function getStaff() {
    $.ajax({
        type: "POST",
        url: "/staff/ajax",
        contentType: "application/x-www-form-urlencoded; charset=UTF-8",
        dataType: "json",
        success: function (res) {
            countries = res;
            autocomplete(document.getElementById("myInput"), countries);
            console.log(countries)
        },
        error: function () {
            alert("실패");
        }
    })
}
let countries = [];

$(document).ready(function () {
    getStaff()
})

// 1. send MESSAGE 를 누른다.
// 2. 배우인덱스와 기타 정보가 영화 컨트롤러로 간다.
// 3. 그리고 참여한 배우 filmo 컨트롤러에 있는 메소드를 가지고 와서 (메서드는 f)
// 4. 배우 인덱스와 영화인덱스를 메소드에 넣어준다.
// 5. 영화 인덱스는 어떻게 보내줄것인가?
// 6. 



