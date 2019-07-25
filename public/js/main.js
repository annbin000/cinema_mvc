function showHide(e) {
    this.x = e.target.nextElementSibling;

    if (this.x.style.display === "none") {
        this.x.style.display = "block";
    } else {
        this.x.style.display = "none";
    }
}