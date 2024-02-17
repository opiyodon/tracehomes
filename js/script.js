/* ====================================================================================================================
================================   PRE-LOADER   ================================================================
==================================================================================================================== */
const main = document.getElementById('SECTIONS')
const preloader = document.getElementById('pre_loader')

window.addEventListener("load", function() {
    preloader.classList.add("hidden");
    main.classList.remove("hidden");
})
/* ====================================================================================================================
================================   NAVBAR TOGGLER ||| NAVBAR   ================================================================
==================================================================================================================== */
//Toggle Navbar
var NAV_TOGGLER = document.querySelector(".NAV_TOGGLER");
NAV_TOGGLER.addEventListener("click", () => {
    if(document.querySelector(".NAV_TOGGLER_MENU").classList.contains("NAV_TOGGLER_CLOSE"))
    {
        document.querySelector(".NAV_TOGGLER_MENU").classList.remove("NAV_TOGGLER_CLOSE");
    }
    else
    {
        document.querySelector(".NAV_TOGGLER_MENU").classList.add("NAV_TOGGLER_CLOSE");
    }
})
//hide NAV BAR on scroll
window.addEventListener("scroll", () => {
    if(document.querySelector(".NAV_TOGGLER_MENU").classList.contains("NAV_TOGGLER_CLOSE"))
    {
        document.querySelector(".NAV_TOGGLER_MENU").classList.add("NAV_TOGGLER_CLOSE");
    }
})
/* ====================================================================================================================
================================   CLOSE_BTN ||| NAVBAR   ================================================================
==================================================================================================================== */
var CLOSE_BTN_BOX = document.querySelector(".CLOSE_BTN_BOX");
CLOSE_BTN_BOX.addEventListener("click", () => {
    document.querySelector(".NAV_TOGGLER_MENU").classList.add("NAV_TOGGLER_CLOSE");





    
})
/* ====================================================================================================================
  ================================   LIGHT | DARK MODE   ==============================================================
  ==================================================================================================================== */

/*============================== Light|Dark Mode Toggle =====================================*/
const LightDarkToggle = document.querySelector(".DL_ICON");
const DAY_NIGHT = document.querySelector(".DAY_NIGHT");

var DARK_MODE;

if(localStorage.getItem('DARK_MODE')){
    DARK_MODE = localStorage.getItem('DARK_MODE');
}
else
{
    DARK_MODE = 'LIGHT';
}

localStorage.setItem('DARK_MODE', DARK_MODE);

if(localStorage.getItem('DARK_MODE') == 'DARK')
{
    document.body.classList.add("DARK")

    DAY_NIGHT.querySelector("i").classList.remove("fa-moon");
        
    DAY_NIGHT.querySelector("i").classList.add("fa-sun");
}


LightDarkToggle.addEventListener("click", () => {
    document.querySelector("body").classList.toggle("DARK");
    if(document.body.classList.contains("DARK"))
    {
        DAY_NIGHT.querySelector("i").classList.remove("fa-moon");
        
        DAY_NIGHT.querySelector("i").classList.add("fa-sun");

        localStorage.setItem('DARK_MODE','DARK');
    }
    else
    {
        DAY_NIGHT.querySelector("i").classList.remove("fa-sun");
        
        DAY_NIGHT.querySelector("i").classList.add("fa-moon");

        localStorage.setItem('DARK_MODE','LIGHT');
    }
})
/* ====================================================================================================================
================================   PROFILE PIC BUTTON ||| RESUSABLE CODE   ================================================================
==================================================================================================================== */
function toggleDropdown() {
    var dropdown = document.getElementById("dropdownMenu");
    dropdown.style.display = dropdown.style.display === "none" ? "block" : "none";
  }
/* ====================================================================================================================
================================   GO TO TOP BUTTON ||| RESUSABLE CODE   ================================================================
==================================================================================================================== */
//function to go to the top the page when button is clicked || its appears only after scrolling for some distance from the top of the screen
var toTop = document.querySelector(".to-top");

window.addEventListener("scroll", () => {
    if (window.scrollY > 100) {
        toTop.classList.add("to-top-active");
    }else {
        toTop.classList.remove("to-top-active");
    }
})
/* ====================================================================================================================
  ================================   SWITCH PICTURES   ==============================================================
  ==================================================================================================================== */

/*============================== Pictures Toggle in selected_property.php =====================================*/
var S_cad = document.querySelectorAll('.S_cad');
var B_cad = document.querySelector('.B_cad');

var B_img = document.getElementById('B_img');
var S_img1 = document.getElementById('S_img1');
var S_img2 = document.getElementById('S_img2');
var S_img3 = document.getElementById('S_img3');

var B_img_src = document.getElementById('B_img').src;
var S_img1_src = document.getElementById('S_img1').src;
var S_img2_src = document.getElementById('S_img2').src;
var S_img3_src = document.getElementById('S_img3').src;

function ACTIVE_S_CAD(){
    if(S_cad){
        S_cad.forEach(l=> l.classList.remove('active_s_cad'));
        this.classList.add('active_s_cad');
    }
}
S_cad.forEach(l=> l.addEventListener('click',ACTIVE_S_CAD));


function ACTIVE_IMAGE1(){
    if(S_img1){
        B_img.setAttribute("src",S_img1_src);
    }
}

function ACTIVE_IMAGE2(){
    if(S_img2){
        B_img.setAttribute("src",S_img2_src);
    }
}

function ACTIVE_IMAGE3(){
    if(S_img3){
        B_img.setAttribute("src",S_img3_src);
    }
}

S_img1.addEventListener('click',ACTIVE_IMAGE1);
S_img2.addEventListener('click',ACTIVE_IMAGE2);
S_img3.addEventListener('click',ACTIVE_IMAGE3);
/* ====================================================================================================================
  ================================   REVIEW TOGGLER   ==============================================================
  ==================================================================================================================== */

/*============================== Review Toggle in selected_property.php =====================================*/
const R_TOGGLER = document.querySelector(".R_TOGGLER");
const R_CONTAINER = document.querySelector(".R_CONTAINER");

R_TOGGLER.addEventListener("click", () => {
    R_CONTAINER.classList.toggle("ACTIVE_REVIEW");
    if(R_CONTAINER.classList.contains("ACTIVE_REVIEW"))
    {
        R_TOGGLER.innerHTML('View All >>','View Less >>');
    }
    else
    {
        R_TOGGLER.innerHTML('View Less >>','View All >>');
    }
})
/* ====================================================================================================================
  ================================   DROP DOWN MENU IN PROFILE.PHP   ==============================================================
  ==================================================================================================================== */
  //function toggleDropdown2() {
    //var dropdownMenu = document.getElementById("dropdownMenu");
    //dropdownMenu.classList.toggle("show");
//}