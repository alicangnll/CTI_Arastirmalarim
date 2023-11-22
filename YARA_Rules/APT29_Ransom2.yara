rule APT29_Ransom2 {
        meta:
                author= "Ali Can Gönüllü"
                description= "APT29 Ransomware Rule"
	strings:
                $pk = {2F 50 4B}
	condition:
                any of them
}