// 输出奇偶数
for(let i=0;i<=20;i++){
    if(i%2==0){
        console.log(i+"是偶数");
    }else{
        console.log(i+"是奇数");
    }
}

// 九九乘法表
for(var i=1;i<=9;i++){
    for(var j=1;j<=i;j++){
        document.write(i+"*"+j+"="+i*j+" ");
    }
    document.write("<br>");
}
