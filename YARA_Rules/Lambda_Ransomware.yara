rule Lambda_Malware {
	meta:
                author= "Ali Can Gönüllü"
                description= "Lambda Malware"
	strings:
                $pk1 = {7B 22 6D 69 64 22 3A 20 22 25 73 22 2C 22 75 69 64 22 3A 20 22 25 73 22 2C 22 76 65 72 22 3A 20 22 25 53 22 2C 22 73 74 61 74 5F 66 69 6C 65 73 5F 61 6C 6C 22 3A 20 22 25 6C 75 22 2C 22 73 74 61 74 5F 6E 6F 74 5F 65 6E 63 72 79 70 74 65 64 22 3A 20 22 25 6C 75 22 2C 22 73 74 61 74 5F 73 69 7A 65 22 3A 20 22 25 73 22 2C 22 65 78 65 63 75 74 69 6F 6E 5F 74 69 6D 65 22 3A 20 22 25 6C 75 22 7D}
                $pk2 = {4c 00 41 00 4d 00 42 00 44 00 41 00 5f 00 52 00 45 00 41 00 44 00 4d 00 45 00 2e 00 74 00 78 00 74}
                $pk3 = {7B 22 6D 69 64 22 3A 20 22 25 73 22 2C 22 75 69 64 22 3A 20 22 25 73 22 2C 22 76 65 72 22 3A 20 22 25 53 22 2C 22 6F 73 22 3A 20 22 25 53 22 2C 22 63 6F 6D 70 75 74 65 72 22 3A 20 22 25 53 22 2C 22 75 73 65 72 6E 61 6D 65 22 3A 20 22 25 53 22 2C 22 64 6F 6D 61 69 6E 22 3A 20 22 25 53 22 2C 20 22 61 72 63 68 22 3A 20 22 25 53 22 2C 22 65 6C 65 76 61 74 69 6F 6E 22 3A 20 22 25 6C 75 22 2C 20 25 53 7D}
                $pk4 = {72 00 31 00 2E 00 70 00 68 00 70}
	condition:
                4 of ($pk*)
}