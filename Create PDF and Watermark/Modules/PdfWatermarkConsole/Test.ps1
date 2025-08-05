Start-Process -FilePath "C:\Users\coolorange\git\pdfWaterMark\coolOrange.Pdf.Watermark.Console\bin\Debug\coolOrange.Pdf.Watermark.Console.exe" -ArgumentList @(
	"--path=C:\Temp\Drawing.pdf"
	"--waterMarkText=ASDF"
	"--angle=50"
	"--horizontalAlignment=Center"
	"--verticalAlignment=Middle"
	"--fontSize=120"
	"--offsetX=5"
	"--offsetY=10"
	"--fontType=Arial"
	"--fontColor=Green"
	"--opacity=30 "
	"--fontStyle=Italic"
)
