rule Medusa_Ransomware {
	meta:
                author= "Ali Can Gönüllü"
                description= "Medusa Ransomware"
	strings:
                $pk1 = {43 00 3a 00 5c 00 55 00 73 00 65 00 72 00 73 00 5c 00 64 00 65 00 6d 00 6f 00 5c 00 41 00 70 00 70 00 44 00 61 00 74 00 61 00 5c 00 52 00 6f 00 61 00 6d 00 69 00 6e 00 67 00 5c 00 73 00 76 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65}
                $pk2 = {73 00 76 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65}
	condition:
                2 of ($pk*)
}

