/**
 * 
 */
for (k=0 ; k<10 ; k+=3){
    for (j=1 ; j<10 ; j++){
        for (i=1 ; i<4 ; i++){
            document.write(i+k + "X" + j + "=" + (i+k)*j + "&nbsp");
        }
        document.write("<br>");
    }
    document.write("<br>");
}