function closeWeb()
{
    // destoy mta browser
    mta.triggerEvent("closeWeb")
}

function menu1()
{
    // Set Menu 2 Invisible
    document.getElementById("menu2").style.visibility = "hidden"

    // Set Menu 1 Visible
    document.getElementById("menu1").style.visibility = "visible"
}

function menu2()
{
    // Set Menu 1 Invisible
    document.getElementById("menu1").style.visibility = "hidden"

    // Set Menu 2 Visible
    document.getElementById("menu2").style.visibility = "visible"
}