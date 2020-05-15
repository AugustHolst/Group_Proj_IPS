
********** Regler ************
Man giver lige besked når man ændrer noget og har tænkt sig at pushe.
Man pusher ikke uden at pulle.




*************** Git Kommandoer ***********
// Hvis man vil pushe noget til gitten:
git status 						// her ser man hvad status er på sine filer; er der nogle filer man har ændret i, er der nogle der har commitet noget man ikke har fået osv.
git add <filnavn> 				// man kan bruge * i stedet for filnavn også tilføjer man alting
git commit -m "min besked" 		// dette skal gøres inden man pusher
git pull 						// Det er god skik at pulle inden man pusher og retter de merges der skal laves.
git push origin master 			// Den her pusher lortet og man er videre.


// Hvis man ikke orker at pulle og bare vil have det der står på git i forvejen skal man skrive følgende 3 kommandoer
git fetch --all
git reset --hard origin/master
git pull orgin master


git reset --soft HEAD~1 		// hvis man fortryder et commit
git checkout <filnavn>			// hvis man fortryder et add