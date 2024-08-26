rule DeathGrip_Ransom {
        meta:
        author= "Ali Can Gönüllü"
        description= "DeathGrip Ransomware Rule"
	    strings:
        $pk = {68 74 74 70 73 3A 2F 2F 77 77 77 2E 6B 65 6E 65 73 72 61 6B 69 73 68 65 76 69 6E 66 6F 2E 63 6F 6d 2F 61 70 69 2F 63 65 6E 73 75 73 2F 52 65 63 6F 72 64 48 69 74 00}
	    condition:
        any of them
}