logout = () => {
    document.getElementById('navigation').innerHTML = "hello ";
    var elem = document.getElementById('profile-details').style.display;

    if (elem == "none") {
        document.getElementById('profile-details').style.display = "flex";
    }


}

function errorMessage() {
    document.getElementById("error-div").innerHTML = " <p id='error'>Invalid Username/Password</p>";

}

window.setTimeout(errorMessage, 100);


function removeErrorMessage() {
    document.getElementById("error-div").innerHTML = null;

}

window.setTimeout(removeErrorMessage, 5000);

