<style>
    .swal-button--cancel {
        color: #ffffff;
        background-color: #e85523;
    }

    .swal-button--delete {
        background-color: #6abe6e;
        color: #fff;
        border: #21314b;
        box-shadow: none;
        border-radius: 5px;
        font-weight: 400;
        font-size: 14px;
        padding: 10px 24px;
        margin: 0;
        cursor: pointer;
    }

    .swal-title {
        color: #000000;
        font-weight: 600;
        text-transform: none;
        position: relative;
        display: block;
        padding: 13px 16px;
        font-size: 23px;

        line-height: normal;
        text-align: center;
        margin-bottom: 0;
    }
</style>

<script src="<?php echo base_url() ?>assets/sweetalert/js/sweetalert.min.js"></script>
<script src="<?php echo base_url() ?>assets/notification/js/bootstrap-growl.min.js"></script>

<script>
$("body").on("click", ".remove-dataaaa", function(e) {
    e.preventDefault();
    var targetUrl = $(this).attr("href");
    var id = $(this).attr("data-id");
    swal({
        title: 'Apakah order akan diterima?',
            text: "",
            type: 'warning',
            icon: 'warning',
            width: 500,
            dangerMode: true,

            buttons: {
                cancel: 'Batal',
                delete: 'Ya, Terima'
            }
         
    }).then(function(willDelete) {
        if (willDelete) {
            var postData = {};
            postData["id"] = id;
            $.post(targetUrl, postData, function(willDelete) {
                swal("Success!", {
                    icon: "success",
                }).then(function() {
                    location.reload();
                });
            });
        }
    });
});
</script>



<script>
    $(document).ready(function() {
        <?php if ($this->session->flashdata('success')) { ?>

            function notify(message, type) {
                $.growl({
                    icon: 'feather icon-check',
                    title: 'Success!',
                    message: message,
                }, {
                    element: 'body',
                    type: type,
                    allow_dismiss: true,
                    placement: {
                        from: 'top',
                        align: 'right'
                    },
                    offset: {
                        x: 30,
                        y: 30
                    },
                    spacing: 10,
                    z_index: 999999,
                    delay: 2500,
                    timer: 5000,
                    url_target: '_blank',
                    mouse_over: false,
                    animate: {
                        enter: 'animated fadeInRight',
                        exit: 'animated fadeOutRight'
                    },
                    icon_type: 'class',
                    template: '<div data-growl="container" style="width:30%;height:80px;" class="alert" role="alert">' +
                        '<button type="button" class="close" data-growl="dismiss">' +
                        '<span aria-hidden="true">&times;</span>' +
                        '<span class="sr-only">Close</span>' +
                        '</button>' +
                        '<span data-growl="icon"></span>' +
                        '<span data-growl="title"></span><br>' +
                        '<span data-growl="message"></span>' +
                        '<a href="#!" data-growl="url"></a>' +
                        '</div>'
                });
            };
            notify('<?php echo $this->session->flashdata('success'); ?>', 'success');
        <?php } else if ($this->session->flashdata('danger')) { ?>

            function notify(message, type) {
                $.growl({
                    icon: 'feather icon-x-circle',
                    title: 'Error!',
                    message: message,
                }, {
                    element: 'body',
                    type: type,
                    allow_dismiss: true,
                    placement: {
                        from: 'top',
                        align: 'right'
                    },
                    offset: {
                        x: 30,
                        y: 30
                    },
                    spacing: 10,
                    z_index: 999999,
                    delay: 2500,
                    timer: 5000,
                    url_target: '_blank',
                    mouse_over: false,
                    animate: {
                        enter: 'animated fadeInRight',
                        exit: 'animated fadeOutRight'
                    },
                    icon_type: 'class',
                    template: '<div data-growl="container" style="width:25%;height:70px;" class="alert" role="alert">' +
                        '<button type="button" class="close" data-growl="dismiss">' +
                        '<span aria-hidden="true">&times;</span>' +
                        '<span class="sr-only">Close</span>' +
                        '</button>' +
                        '<span data-growl="icon"></span>' +
                        '<span data-growl="title"></span><br>' +
                        '<span data-growl="message"></span>' +
                        '<a href="#!" data-growl="url"></a>' +
                        '</div>'
                });
            };
            notify('<?php echo $this->session->flashdata('danger'); ?>', 'danger');
        <?php } else if ($this->session->flashdata('warning')) { ?>

            function notify(message, type) {
                $.growl({
                    icon: 'feather icon-alert-triangle',
                    title: 'Peringatan!',
                    message: message,
                }, {
                    element: 'body',
                    type: type,
                    allow_dismiss: true,
                    placement: {
                        from: 'top',
                        align: 'right'
                    },
                    offset: {
                        x: 30,
                        y: 30
                    },
                    spacing: 10,
                    z_index: 999999,
                    delay: 2500,
                    timer: 5000,
                    url_target: '_blank',
                    mouse_over: false,
                    animate: {
                        enter: 'animated fadeInRight',
                        exit: 'animated fadeOutRight'
                    },
                    icon_type: 'class',
                    template: '<div data-growl="container" style="width:30%;height:80px;" class="alert" role="alert">' +
                        '<button type="button" class="close" data-growl="dismiss">' +
                        '<span aria-hidden="true">&times;</span>' +
                        '<span class="sr-only">Close</span>' +
                        '</button>' +
                        '<span data-growl="icon"></span>' +
                        '<span data-growl="title"></span><br>' +
                        '<span data-growl="message"></span>' +
                        '<a href="#!" data-growl="url"></a>' +
                        '</div>'
                });
            };
            notify('<?php echo $this->session->flashdata('warning'); ?>', 'warning');
        <?php } else if ($this->session->flashdata('info')) { ?>

            function notify(message, type) {
                $.growl({
                    icon: 'feather icon-alert-circle',
                    title: 'Peringatan!',
                    message: message,
                }, {
                    element: 'body',
                    type: type,
                    allow_dismiss: true,
                    placement: {
                        from: 'top',
                        align: 'right'
                    },
                    offset: {
                        x: 30,
                        y: 30
                    },
                    spacing: 10,
                    z_index: 999999,
                    delay: 2500,
                    timer: 5000,
                    url_target: '_blank',
                    mouse_over: false,
                    animate: {
                        enter: 'animated fadeInRight',
                        exit: 'animated fadeOutRight'
                    },
                    icon_type: 'class',
                    template: '<div data-growl="container" style="width:30%;height:80px;" class="alert" role="alert">' +
                        '<button type="button" class="close" data-growl="dismiss">' +
                        '<span aria-hidden="true">&times;</span>' +
                        '<span class="sr-only">Close</span>' +
                        '</button>' +
                        '<span data-growl="icon"></span>' +
                        '<span data-growl="title"></span><br>' +
                        '<span data-growl="message"></span>' +
                        '<a href="#!" data-growl="url"></a>' +
                        '</div>'
                });
            };
            notify('<?php echo $this->session->flashdata('info'); ?>', 'info');
        <?php } ?>
    });
</script>