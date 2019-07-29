document.addEventListener("DOMContentLoaded", function(event) {
    const headers = document.getElementsByClassName("header");

    [].forEach.call(headers, el => {
        el.addEventListener("click", e => {
            let list = $(e.currentTarget).next().find('ul');

            $.ajax({
                type: "GET",
                url: '/ComeOut',
                data: {
                    id: e.currentTarget.dataset.cinemaId
                },
                success: function(data) {
                    list.html(data);
                    e.target.nextElementSibling.classList.toggle("hidden");
                }
            });

            // $.ajax({
            //     type: "GET",
            //     url: '/Film',
            //     data: {
            //         id: e.currentTarget.dataset.id
            //     },
            //     success: function(data) {
            //         console.log(data);
            //     }
            // });
        });
    });
});
