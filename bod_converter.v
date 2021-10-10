module bod_converter(a,b,c,d,e,f,g,h,C0,S3,S2,S1,S0);
	input C0,S3,S2,S1,S0;
	output a,b,c,d,e,f,g,h;

	assign a=(0);
	assign b=(0);
	assign c=((C0&S2)|(C0&S3));
	assign d=((~C0&S3&S1)|(~C0&S3&S2)|(S3&S2&S1)|(C0&~S3&~S2));
	assign e=((~C0&S3&~S2&~S1)|(C0&~S3&~S2&S1)|(C0&S3&S2&~S1));
	assign f=((~C0&~S3&S2)|(~C0&S2&S1)|(C0&~S2&~S1)|(C0&S3&~S2));
	assign g=((~C0&~S3&S1)|(~S3&S2&S1)|(~C0&S3&S2&~S1)|(C0&~S3&~S2&~S1)|(C0&S3&~S2&S1));
	assign h=(S0);
	
	

	
	
endmodule
