import inquirer from "inquirer";
import qr from "qr-image"
import fs from "fs"


inquirer
	.prompt([
		{
			"name": "URL",
			"message":"Enter URL: ",
		}
	])
	.then((answer)=>{
		const url = answer.URL
		var qr_svg = qr.image(url, {type: "png"})
		qr_svg.pipe(fs.createWriteStream("qr_img.png"))
		fs.writeFile("urls.txt", url, (err)=>{
			if (err) throw err
			console.log("URL written successfully")
		})
	})
	.catch((error)=>{
		if (error.isTtyError)
		console.log("Your terminal developed an error")
		else
		console.log("An error occored please try again")
	})
