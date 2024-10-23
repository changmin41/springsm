let js4 = {
    data:null,
    init:function(){
        $('#btn_get').click(()=>{
            this.getdata();
        });
    },
    getdata:function(){
        let datas = [
            {'id':'id01','name':'james1','age':10},
            {'id':'id02','name':'james2','age':20},
            {'id':'id03','name':'james3','age':30},
            {'id':'id04','name':'james4','age':40},
            {'id':'id05','name':'james5','age':50}
        ];
        this.display(datas);
    },
    display:function(datas){
        let result = '';
        $(datas).each(function(index, data){
            result += '<tr>';
            result += '<td>'+ data.id +'</td>';
            result += '<td>'+ data.name +'</td>';
            result += '<td>'+ data.age +'</td>';
            result += '</tr>';
        });
        $('#cdata > tbody').html(result);
    }
};

let js5 = {
    init:function(){
        $('#login_form > button').click(()=>{
            this.check();
        });
    },
    check:function(){
        let id = $('#id').val();
        let pwd = $('#pwd').val();
        if(id == '' || id == null){
            alert('아이디를 입력하시오.');
            $('#id').focus();
            return;
        }
        if(pwd == '' || pwd == null){
            alert('비번 입력하시오');
            $('#pwd').focus();
            return;
        }
        this.send();
    },
    send:function(){
        // method, action
        $('#login_form').attr('method','post');

        $('#login_form').attr('action','/loginimpl');
        $('#login_form').submit();
    }
};

let js6 = {
    init:function(){
        $('#register_form > button').click(()=>{
            this.check();
        });
    },
    check:function(){
        let id = $('#id').val();
        let pwd = $('#pwd').val();
        let email = $('#email').val();
        let re_name = $('#re_name').val();
        let gender = $('input[name="customRadio"]:checked').val();

        if(id == '' || id == null){
            alert('ID는 필수 항목입니다.');
            $('#id').focus();
            return;
        }
        if(pwd == '' || pwd == null){
            alert('비밀번호는 필수 항목입니다.');
            $('#pwd').focus();
            return;
        }
        if(email == '' || email == null){
            alert('이메일은 필수 항목입니다.');
            $('#email').focus();
            return;
        }
        if(re_name == '' || re_name == null){
            alert('이름은 필수 항목입니다.');
            $('#re_name').focus();
            return;
        }
        if(!gender){
            alert('성별을 선택해주세요.');
            $('#customRadio').focus();
            return;
        }
        this.send();
    },
    send:function(){
        // method와 action 설정
        $('#register_form').attr('method','post');
        $('#register_form').attr('action','/registerimpl');
        $('#register_form').submit();
    }
};