function func1()
{
    $("#img1").fadeToggle(3000);
}

const func2 = () => {
    $("div").css("background-color", "orange")
    $("div > li").css("background-color", "green")
    $("div > li").text("Hey, I just changed")
}
