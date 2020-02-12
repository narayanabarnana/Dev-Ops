
        class{'linux1':}
        class{'linux':}
        class{'mediawiki':}
}
class linux1{
        file{'/info.txt':
        ensure => 'present',
        content => "This is our first file",
        }
        package{'httpd':
        ensure => 'present',
        }
       
        service{'httpd':
        ensure => 'running',
        enable => 'true',
        }
}
class linux{
        $pkg_list = ["git", "nano" , "java"]
        package{ $pkg_list:
        ensure => 'present',
        }
}