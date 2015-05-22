#A makefile to build the merge driver

pharo/Pharo.image:
	mkdir pharo
	cd pharo; ../getPharo40MinimalImage; ../getPharoVMLatest
	pharo/pharo pharo/Pharo.image --no-default-preferences eval --save \(MCWorkingCopy registry at: \(MCPackage named: \'Monticellofiletree-core\'\)\) unload
	pharo/pharo pharo/Pharo.image --no-default-preferences eval --save Metacello new baseline: \'MonticelloFileTree\'\; repository: \#\(\'http://smalltalkhub.com/mc/Pharo/Pharo40/main\'\ \'http://smalltalkhub.com/mc/ThierryGoubier/MinimalBaselines40/main\'\)\; load
	pharo/pharo pharo/Pharo.image --no-default-preferences eval --save Gofer new url: \'http://smalltalkhub.com/mc/ThierryGoubier/Alt30/main/\'\; package: \'GitFileTree-MergeDriver\'\; load
	git config --global merge.mcVersion.driver "`pwd`/merge --version %O %A %B"
	git config --global merge.mcMethodProperties.name "GitFileTree MergeDriver for Monticello"
	git config --global merge.mcMethodProperties.driver "`pwd`/merge --methodProperties %O %A %B"
	git config --global merge.mcProperties.name "GitFileTree MergeDriver for Monticello"
	git config --global merge.mcProperties.driver "`pwd`/merge --properties %O %A %B"

all: pharo/Pharo.image

clean:
	rm -rf pharo

