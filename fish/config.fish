if status is-interactive
	pfetch
	alias milivoje="ssh root@192.168.20.25"
	alias milivoje_vani="ssh root@185.155.224.196 -p 21222"
	alias poplin="ssh -i ~/.ssh/poplin_production.pem ubuntu@34.192.70.79"
	alias tcc="ssh -i ~/.ssh/TCC_28July2020.cer ubuntu@ec2-54-161-246-13.compute-1.amazonaws.com -p 5001"
	alias tcca="ssh -i ~/.ssh/TCC_28July2020.cer ubuntu@ec2-54-205-141-150.compute-1.amazonaws.com"
	alias tccmongo="ssh -i ~/.ssh/TCC_28July2020.cer bitnami@ec2-3-86-58-24.compute-1.amazonaws.com"
	alias discovery_bucket="ssh -i ~/.ssh/pristup_server_discovery.pem ubuntu@3.216.205.140"

	set PATH $HOME/.rbenv/bin $PATH
	. (rbenv init -|psub)

	pyenv init - | source

	function fish_user_key_bindings
	    for mode in insert default visual
	        bind -M $mode \cf forward-char
	    end
	end

	bind -M insert -m default jj 'commandline -f repaint'

end
