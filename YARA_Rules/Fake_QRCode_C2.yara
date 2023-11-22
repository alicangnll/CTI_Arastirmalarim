rule Fake_QRCode_C2 {
	meta:
                author= "Ali Can Gönüllü"
                description= "Fake QR Code App"
	strings:
                $pk1 = {74 74 70 73 3a 2f 2f 77 77 77 2e 67 69 74 2d 68 75 62 2e 6d 65 2f 76 69 65 77 2e 70 68 70}
                $pk2 = {68 74 74 70 73 3a 2f 2f 77 77 77 2e 67 69 74 2d 68 75 62 2e 6d 65 2f 76 69 65 77 2e 70 68 70 01}
                $pk3 = {47 49 54 48 55 42 5f 52 45 51}
	condition:
                3 of ($pk*)
}