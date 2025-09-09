size(300,300);
background(255,255,255);
int sizeC = 255;
for(int i = 0; i < 50; i++){
ellipse(260 - sizeC/2, 260 - sizeC/2, sizeC,sizeC);
sizeC = sizeC - 5;
println(sizeC);
}
