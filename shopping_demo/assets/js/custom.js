// Captcha Generator
function captchaCode() {
    var Numb1, Numb2, Numb3, Numb4, Code;
    Numb1 = (Math.ceil(Math.random() * 10) - 1).toString();
    Numb2 = (Math.ceil(Math.random() * 10) - 1).toString();
    Numb3 = (Math.ceil(Math.random() * 10) - 1).toString();
    Numb4 = (Math.ceil(Math.random() * 10) - 1).toString();

    Code = Numb1 + Numb2 + Numb3 + Numb4;
    $("#captcha span").remove();
    $("#captcha input").remove();
    $("#captcha").append("<span id='code'>" + Code + "</span>");
}

$(function () {
    captchaCode();

    $('#contactForm').submit(function () {
        var captchaVal = $("#code").text();
        var captchaCode = $(".captcha").val();
        if (captchaVal == captchaCode) {
            $(".captcha").css({
                "color": "#609D29"
            });
        } else {
            $(".captcha").css({
                "color": "#CE3B46"
            });
        }

        var emailFilter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,10})+$/;
        var emailText = $(".email").val();
        if (emailFilter.test(emailText)) {
            $(".email").css({
                "color": "#609D29"
            });
        } else {
            $(".email").css({
                "color": "#CE3B46"
            });
        }

        var nameFilter = /^([a-zA-Z \t]{3,15})+$/;
        var nameText = $(".name").val();
        if (nameFilter.test(nameText)) {
            $(".name").css({
                "color": "#609D29"
            });
        } else {
            $(".name").css({
                "color": "#CE3B46"
            });
        }

        var messageText = $(".message").val().length;
        if (messageText > 50) {
            $(".message").css({
                "color": "#609D29"
            });
        } else {
            $(".message").css({
                "color": "#CE3B46"
            });
        }

        if ((captchaVal !== captchaCode) || (!emailFilter.test(emailText)) || (!nameFilter.test(nameText)) || (messageText < 50)) {
            return false;
        }
        if ((captchaVal == captchaCode) && (emailFilter.test(emailText)) && (nameFilter.test(nameText)) && (messageText > 50)) {
            $("#contactForm").css("display", "none");
            $("#form").append("<h2>Message sent!</h2>");
            return false;
        }
    });
});

new WOW().init();

                            
                                    
//Register and Login Js
$(document).ready(function () {

    $("#sign_in").click(function () {
        $('#myModal').modal('hide');
        $('#myModal1').modal('show');
    });

    var email_reg = $('#emailr').val();
    var email_log = $('#emaill').val();
    var value = $('#passwordr').val();
    var code_val = $('#code').text();
    var con_number = $('#number').val();

    $.validator.addMethod("codeval", function (code_val) {
        var captchaVal = $("#code").text();
        var captchaCode = $(".captcha").val();
        if (captchaVal == captchaCode) {
            return true;
        } else {
            return false;
        }
    });
    $.validator.addMethod("emailreg", function (email_reg) {
        return /^([a-z0-9\+_\-]+)(\.[a-z0-9\+_\-]+)*@([a-z0-9\-]+\.)+[a-z]{2,6}$/i.test(email_reg) // consists of only these
    });
    $.validator.addMethod("emaillog", function (email_log) {
        return /^([a-z0-9\+_\-]+)(\.[a-z0-9\+_\-]+)*@([a-z0-9\-]+\.)+[a-z]{2,6}$/i.test(email_log) // consists of only these
    });

    $.validator.addMethod("pwcheck", function (value) {
        return /^[A-Za-z0-9\d=!\-@._*]*$/.test(value) // consists of only these
                && /[a-z]/.test(value) // has a lowercase letter
                && /\d/.test(value) // has a digit
    });
    $.validator.addMethod("connumber", function (con_number) {
        return /^[0-9]{3}-[0-9]{4}-[0-9]{4}$/.test(con_number)
    });

    $("#registration").validate({
        rules: {
            emailr: {
                required: true,
                email: true,
                emailreg: true
            },
            passwordr: {
                required: true,
                minlength: 8,
                pwcheck: true
            },
            psw_repeat: {
                required: true,
                minlength: 8,
                equalTo: "#passwordr"
            },
            number: {
                required: true,
                number: true
            },
            captcha: {
                required: true,
                codeval: true
            }
        },
        messages: {
            emailr: {
                required: "Email Is Required",
                email: "Please Enter Valid Email Address.",
                emailreg: "Please Enter Valid Email Address."
            },
            passwordr: {
                required: "Password Is required.",
                minlength: "Please Enter at least 8 Character Password.",
                pwcheck: "Please enter at least 1 number, 1 lowercase character and 1 uppercase character."
            },
            psw_repeat: {
                required: "Confirm Password is Required.",
                minlength: "Please Enter at least 8 Character of Password.",
                equalTo: "Your Password is dose not Matched."
            },
            number: {
                required: "Phone number is required.",
                number: "Please Enter Your Contact Number."
            },
            captcha: {
                required: "Please Enter Captcha",
                codeval: "Please Enter Valid Captcha"
            }
        },
        submitHandler: function (form) {
            $.ajax({
                url: "user_register.php",
                type: "POST",
                data: $("form").serialize(),
                success: function (data) {
                    $("#result").html(data);
                    $(form)[0].reset();
                    if (data = true)
                    {
                        $('#myModal').modal('hide');
                        $('#myModal1').modal('show');
                    }
                }
            });
        }
    });

    $("#login").validate({
        rules:
                {
                    emaill: {
                        required: true,
                        email: true,
                        emaillog: true
                    },
                    passwordl:
                            {
                                required: true
                            }
                },
        messages:
                {
                    emaill: {
                        required: "Email Is Required",
                        email: "Please Enter Valid Email Address.",
                        emaillog: "Please Enter Valid Email Address."
                    },
                    passwordl: {
                        required: "Password Is required."
                    }
                },
        submitHandler: function (form) {
            $.ajax({
                url: "user_login.php",
                type: "POST",
                data: $("form").serialize(),
                success: function (data) {
                    $("#log_result").html(data);
//                    if (data = true)
//                    {
//                    window.location = "user-panel/user_dashboard";
//                    }
                    
                    
                }
            });
        }
    });
});
                                    
                                    