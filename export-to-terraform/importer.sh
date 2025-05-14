
terraform import "aviatrix_account.account_1" "cp-data-prod" 

terraform import "aviatrix_account.account_2" "cp-prod" 

terraform import "aviatrix_account.account_3" "cp-prod-pci" 


terraform import "aviatrix_account_user.account_user_1" "admin" 

terraform import "aviatrix_account_user.account_user_2" "rajnesh.siwal" 

terraform import "aviatrix_account_user.account_user_3" "raymond.mak" 

terraform import "aviatrix_account_user.account_user_4" "arvind.sharma" 

terraform import "aviatrix_account_user.account_user_5" "sasi.reddy" 

terraform import "aviatrix_account_user.account_user_6" "jashandeep.singh" 

terraform import "aviatrix_account_user.account_user_7" "jordan.toor" 


terraform import "aviatrix_cloudwatch_agent.cloudwatch_agent_1" "datadog_agent" 


terraform import "aviatrix_controller_cert_domain_config.controller_cert_domain_config_1" "35-155-146-108" 


terraform import "aviatrix_controller_config.controller_config_1" "35-155-146-108" 


terraform import "aviatrix_controller_email_exception_notification_config.controller_email_exception_notification_config_1" "35-155-146-108" 


terraform import "aviatrix_firewall.firewall_1" "cp-prod-fra-pci-aviatrix-egress-gw" 

terraform import "aviatrix_firewall.firewall_2" "cp-prod-ore-pci-aviatrix-gw" 

terraform import "aviatrix_firewall.firewall_3" "cp-prod-mon-pci-aviatrix-egress-gw" 


terraform import "aviatrix_firewall_policy.firewall_policy_1" "cp-prod-fra-pci-aviatrix-egress-gw~172.21.122.10~Alertlogic-Outbound-Traffic~tcp~4138~allow" 

terraform import "aviatrix_firewall_policy.firewall_policy_2" "cp-prod-fra-pci-aviatrix-egress-gw~172.21.122.10~Alertlogic-Outbound-Traffic~tcp~443~allow" 

terraform import "aviatrix_firewall_policy.firewall_policy_3" "cp-prod-ore-pci-aviatrix-gw~172.20.122.53~Alertlogic-Outbound-Traffic~tcp~4138~allow" 

terraform import "aviatrix_firewall_policy.firewall_policy_4" "cp-prod-ore-pci-aviatrix-gw~172.20.122.53~Alertlogic-Outbound-Traffic~tcp~443~allow" 

terraform import "aviatrix_firewall_policy.firewall_policy_5" "cp-prod-mon-pci-aviatrix-egress-gw~172.23.122.53~Alertlogic-Outbound-Traffic~tcp~4138~allow" 

terraform import "aviatrix_firewall_policy.firewall_policy_6" "cp-prod-mon-pci-aviatrix-egress-gw~172.23.122.53~Alertlogic-Outbound-Traffic~tcp~443~allow" 


terraform import "aviatrix_firewall_tag.firewall_tag_1" "Alertlogic-Outbound-Traffic" 


terraform import "aviatrix_fqdn.fqdn_1" "Payment-VPC-OutBound-Web-Whitelist" 

terraform import "aviatrix_fqdn.fqdn_2" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist" 


terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_1" "Payment-VPC-OutBound-Web-Whitelist~*.alertlogic.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_2" "Payment-VPC-OutBound-Web-Whitelist~*.alertlogic.net~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_3" "Payment-VPC-OutBound-Web-Whitelist~*.amazonaws.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_4" "Payment-VPC-OutBound-Web-Whitelist~*.cardeasexml.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_5" "Payment-VPC-OutBound-Web-Whitelist~*.chargepoint.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_6" "Payment-VPC-OutBound-Web-Whitelist~*.cloudfront.net~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_7" "Payment-VPC-OutBound-Web-Whitelist~*.cloudsink.net~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_8" "Payment-VPC-OutBound-Web-Whitelist~*.docker.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_9" "Payment-VPC-OutBound-Web-Whitelist~*.fedoraproject.org~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_10" "Payment-VPC-OutBound-Web-Whitelist~*.googleapis.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_11" "Payment-VPC-OutBound-Web-Whitelist~*.heartlandportico.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_12" "Payment-VPC-OutBound-Web-Whitelist~*.kernel.org~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_13" "Payment-VPC-OutBound-Web-Whitelist~*.paypalobjects.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_14" "Payment-VPC-OutBound-Web-Whitelist~*.qg3.apps.qualys.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_15" "Payment-VPC-OutBound-Web-Whitelist~*.qualys.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_16" "Payment-VPC-OutBound-Web-Whitelist~*.sandbox.paypal.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_17" "Payment-VPC-OutBound-Web-Whitelist~*.ubuntu.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_18" "Payment-VPC-OutBound-Web-Whitelist~*.ubuntu.com~tcp~80~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_19" "Payment-VPC-OutBound-Web-Whitelist~al-receiver.alertlogic.net~tcp~4138~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_20" "Payment-VPC-OutBound-Web-Whitelist~api-3t.paypal.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_21" "Payment-VPC-OutBound-Web-Whitelist~api.globalpay-ecommerce.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_22" "Payment-VPC-OutBound-Web-Whitelist~api.lacework.net~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_23" "Payment-VPC-OutBound-Web-Whitelist~api.realexpayments.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_24" "Payment-VPC-OutBound-Web-Whitelist~api.rubygems.org~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_25" "Payment-VPC-OutBound-Web-Whitelist~api.us-2.crowdstrike.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_26" "Payment-VPC-OutBound-Web-Whitelist~apt.newrelic.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_27" "Payment-VPC-OutBound-Web-Whitelist~apt.releases.teleport.dev~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_28" "Payment-VPC-OutBound-Web-Whitelist~archive.apache.org~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_29" "Payment-VPC-OutBound-Web-Whitelist~artifacts.elastic.co~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_30" "Payment-VPC-OutBound-Web-Whitelist~bay.uchicago.edu~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_31" "Payment-VPC-OutBound-Web-Whitelist~cdn.teleport.dev~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_32" "Payment-VPC-OutBound-Web-Whitelist~chargepoint.okta.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_33" "Payment-VPC-OutBound-Web-Whitelist~chargepoint.teleport.sh~tcp~11261~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_34" "Payment-VPC-OutBound-Web-Whitelist~chargepoint.teleport.sh~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_35" "Payment-VPC-OutBound-Web-Whitelist~chef-aws.chargepoint.com~tcp~8443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_36" "Payment-VPC-OutBound-Web-Whitelist~collector.newrelic.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_37" "Payment-VPC-OutBound-Web-Whitelist~cp-prod-fra-nos-jumpbox-1.chargepoint.com~tcp~3306~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_38" "Payment-VPC-OutBound-Web-Whitelist~cp-prod-mon-nos-jumpbox-1.chargepoint.com~tcp~3306~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_39" "Payment-VPC-OutBound-Web-Whitelist~cp-prod-mon-nos-jumpbox-1.internalcp.com~tcp~3306~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_40" "Payment-VPC-OutBound-Web-Whitelist~cp-prod-ore-global-ipa-1.charge-point.co~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_41" "Payment-VPC-OutBound-Web-Whitelist~cp-prod-ore-global-ipa-1.charge-point.co~tcp~88~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_42" "Payment-VPC-OutBound-Web-Whitelist~cp-prod-ore-global-ipa-1.charge-point.co~udp~88~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_43" "Payment-VPC-OutBound-Web-Whitelist~cp-prod-ore-global-ipa-1.charge-point.co~tcp~464~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_44" "Payment-VPC-OutBound-Web-Whitelist~cp-prod-ore-global-ipa-1.charge-point.co~udp~464~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_45" "Payment-VPC-OutBound-Web-Whitelist~cp-prod-ore-global-ipa-1.charge-point.co~tcp~389~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_46" "Payment-VPC-OutBound-Web-Whitelist~cp-prod-ore-global-ipa-1.charge-point.co~tcp~636~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_47" "Payment-VPC-OutBound-Web-Whitelist~cp-prod-ore-global-ipa-1.charge-point.co~udp~123~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_48" "Payment-VPC-OutBound-Web-Whitelist~cp-prod-ore-global-ipa-2.charge-point.co~tcp~389~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_49" "Payment-VPC-OutBound-Web-Whitelist~cp-prod-ore-global-ipa-2.charge-point.co~tcp~464~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_50" "Payment-VPC-OutBound-Web-Whitelist~cp-prod-ore-global-ipa-2.charge-point.co~udp~464~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_51" "Payment-VPC-OutBound-Web-Whitelist~cp-prod-ore-global-ipa-2.charge-point.co~udp~123~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_52" "Payment-VPC-OutBound-Web-Whitelist~cp-prod-ore-global-ipa-2.charge-point.co~tcp~636~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_53" "Payment-VPC-OutBound-Web-Whitelist~cp-prod-ore-global-ipa-2.charge-point.co~tcp~88~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_54" "Payment-VPC-OutBound-Web-Whitelist~cp-prod-ore-global-ipa-2.charge-point.co~udp~88~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_55" "Payment-VPC-OutBound-Web-Whitelist~cp-prod-ore-global-ipa-2.charge-point.co~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_56" "Payment-VPC-OutBound-Web-Whitelist~cp-prod-ore-nos-jumpbox-1.chargepoint.com~tcp~3306~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_57" "Payment-VPC-OutBound-Web-Whitelist~cp-prod-syd-nos-jumpbox-1.chargepoint.com~tcp~3306~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_58" "Payment-VPC-OutBound-Web-Whitelist~dfw.mirror.rackspace.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_59" "Payment-VPC-OutBound-Web-Whitelist~dl.fedoraproject.org~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_60" "Payment-VPC-OutBound-Web-Whitelist~dl.iuscommunity.org~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_61" "Payment-VPC-OutBound-Web-Whitelist~download.oracle.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_62" "Payment-VPC-OutBound-Web-Whitelist~edr2meujgzcuyl73wag7ss2p3a0zmzhi.lambda-url.us-west-2.on.aws~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_63" "Payment-VPC-OutBound-Web-Whitelist~email-smtp.us-west-2.amazonaws.com~tcp~587~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_64" "Payment-VPC-OutBound-Web-Whitelist~files.pythonhosted.org~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_65" "Payment-VPC-OutBound-Web-Whitelist~get.gravitational.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_66" "Payment-VPC-OutBound-Web-Whitelist~github.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_67" "Payment-VPC-OutBound-Web-Whitelist~googleapis.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_68" "Payment-VPC-OutBound-Web-Whitelist~iad.mirror.rackspace.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_69" "Payment-VPC-OutBound-Web-Whitelist~ics2.ic3.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_70" "Payment-VPC-OutBound-Web-Whitelist~ics2a.ic3.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_71" "Payment-VPC-OutBound-Web-Whitelist~ics2test.ic3.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_72" "Payment-VPC-OutBound-Web-Whitelist~ics2testa.ic3.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_73" "Payment-VPC-OutBound-Web-Whitelist~ics2ws.ic3.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_74" "Payment-VPC-OutBound-Web-Whitelist~ics2wsa.ic3.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_75" "Payment-VPC-OutBound-Web-Whitelist~ics2wstest.ic3.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_76" "Payment-VPC-OutBound-Web-Whitelist~ics2wstesta.ic3.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_77" "Payment-VPC-OutBound-Web-Whitelist~ifconfig.co~tcp~80~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_78" "Payment-VPC-OutBound-Web-Whitelist~mirror.centos.org~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_79" "Payment-VPC-OutBound-Web-Whitelist~mirror.centos.org~tcp~80~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_80" "Payment-VPC-OutBound-Web-Whitelist~mirror.grid.uchicago.edu~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_81" "Payment-VPC-OutBound-Web-Whitelist~mirror.hmc.edu~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_82" "Payment-VPC-OutBound-Web-Whitelist~mirror.nodesdirect.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_83" "Payment-VPC-OutBound-Web-Whitelist~mirror.oss.ou.edu~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_84" "Payment-VPC-OutBound-Web-Whitelist~mirror.team-cymru.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_85" "Payment-VPC-OutBound-Web-Whitelist~mirrorlist.centos.org~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_86" "Payment-VPC-OutBound-Web-Whitelist~mirrors.fedoraproject.org~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_87" "Payment-VPC-OutBound-Web-Whitelist~mirrors.iuscommunity.org~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_88" "Payment-VPC-OutBound-Web-Whitelist~mirrors.kernel.org~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_89" "Payment-VPC-OutBound-Web-Whitelist~nexus.ensighten.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_90" "Payment-VPC-OutBound-Web-Whitelist~nexus.ev-chargepoint.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_91" "Payment-VPC-OutBound-Web-Whitelist~nginx.org~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_92" "Payment-VPC-OutBound-Web-Whitelist~nginx.org~tcp~80~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_93" "Payment-VPC-OutBound-Web-Whitelist~npt-lb-ui-cd14.fusionvm.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_94" "Payment-VPC-OutBound-Web-Whitelist~packages.lacework.net~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_95" "Payment-VPC-OutBound-Web-Whitelist~paypal.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_96" "Payment-VPC-OutBound-Web-Whitelist~public.ecr.aws~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_97" "Payment-VPC-OutBound-Web-Whitelist~qagpublic.qg3.apps.qualys.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_98" "Payment-VPC-OutBound-Web-Whitelist~registry.k8s.io~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_99" "Payment-VPC-OutBound-Web-Whitelist~repo.zabbix.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_100" "Payment-VPC-OutBound-Web-Whitelist~repo.zabbix.com~tcp~80~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_101" "Payment-VPC-OutBound-Web-Whitelist~rpms.famillecollet.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_102" "Payment-VPC-OutBound-Web-Whitelist~rpms.famillecollet.com~tcp~80~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_103" "Payment-VPC-OutBound-Web-Whitelist~rubygems.org~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_104" "Payment-VPC-OutBound-Web-Whitelist~s3-us-west-2.amazonaws.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_105" "Payment-VPC-OutBound-Web-Whitelist~sandbox.usaepay.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_106" "Payment-VPC-OutBound-Web-Whitelist~scc.alertlogic.net~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_107" "Payment-VPC-OutBound-Web-Whitelist~secure.usaepay.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_108" "Payment-VPC-OutBound-Web-Whitelist~svc-receiver.alertlogic.com~tcp~4138~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_109" "Payment-VPC-OutBound-Web-Whitelist~tm-receiver.newport.alertlogic.com~tcp~4138~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_110" "Payment-VPC-OutBound-Web-Whitelist~apt.vector.dev~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_111" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~*.*.amazontrust.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_112" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~*.akamai~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_113" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~*.akamai~tcp~80~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_114" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~*.amazonaws.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_115" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~*.amazontrust.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_116" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~*.cloudfront.net~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_117" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~*.cloudsink.net~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_118" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~*.compute-1.amazonaws.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_119" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~*.compute-1.amazonaws.com~tcp~80~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_120" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~*.compute.amazonaws.com~tcp~80~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_121" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~*.compute.amazonaws.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_122" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~*.digicert.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_123" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~*.download.windowsupdate.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_124" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~*.download.windowsupdate.com~tcp~80~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_125" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~*.google.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_126" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~*.google.com~tcp~80~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_127" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~*.googleapis.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_128" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~*.googleapis.com~tcp~80~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_129" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~*.gvt1.com~tcp~80~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_130" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~*.gvt1.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_131" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~*.gvt2.com~tcp~80~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_132" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~*.gvt2.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_133" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~*.live.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_134" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~*.microsoft.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_135" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~*.newrelic.com~tcp~80~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_136" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~*.newrelic.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_137" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~*.nr-data.net~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_138" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~*.nr-data.net~tcp~80~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_139" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~*.online.tableau.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_140" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~*.online.tableau.com~tcp~80~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_141" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~*.salesforce.com~tcp~80~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_142" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~*.salesforce.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_143" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~*.sophos.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_144" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~*.sophosupd.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_145" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~*.sophosupd.net~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_146" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~*.sophosxl.net~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_147" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~*.tableau.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_148" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~*.update.microsoft.com~tcp~80~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_149" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~*.update.microsoft.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_150" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~*.us-west-2.amazonaws.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_151" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~*.windowsupdate.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_152" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~*.windowsupdate.com~tcp~80~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_153" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~*.windowsupdate.microsoft.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_154" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~*.windowsupdate.microsoft.com~tcp~80~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_155" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~athena.us-west-2.amazonaws.com~tcp~444~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_156" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~athena.us-west-2.amazonaws.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_157" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~chargepointinc.my.salesforce.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_158" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~cp-ba-prod-ore-cs-aurora-2.cmzhft4t2ek1.us-west-2.rds.amazonaws.com~tcp~3306~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_159" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~cp-prod-ore-nos-jumpbox-1.chargepoint.com~tcp~3306~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_160" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~cpislave.cxegomb1o06l.us-west-2.rds.amazonaws.com~tcp~3306~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_161" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~crash-artifacts-747369.s3.amazonaws.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_162" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~crash-artifacts-747369.s3.amazonaws.com~tcp~80~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_163" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~debian.cassandra.apache.org~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_164" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~dlm.mariadb.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_165" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~download.microsoft.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_166" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~download.microsoft.com~tcp~80~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_167" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~download.windowsupdate.com~tcp~80~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_168" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~download.windowsupdate.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_169" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~downloads.apache.org~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_170" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~licensing.tableausoftware.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_171" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~mariadb.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_172" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~ntservicepack.microsoft.com~tcp~80~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_173" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~prod-dw.chargepoint.com~tcp~3306~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_174" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~qa-dw.ev-chargepoint.com~tcp~3306~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_175" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~qagpublic.qg3.apps.qualys.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_176" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~reporting.chargepoint.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_177" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~s3-us-west-2-w.amazonaws.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_178" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~s3-us-west-2-w.amazonaws.com~tcp~80~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_179" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~s3-w-a.us-west-2.amazonaws.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_180" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~s3-w-a.us-west-2.amazonaws.com~tcp~80~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_181" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~security.ubuntu.com~tcp~80~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_182" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~tableau.chargepoint.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_183" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~test.stats.update.microsoft.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_184" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~test.stats.update.microsoft.com~tcp~80~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_185" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~us-prod-dw-redshift.chargepoint.com~tcp~5439~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_186" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~us-west-2.ec2.archive.ubuntu.com~tcp~80~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_187" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~windowsupdate.microsoft.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_188" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~www.google.com~tcp~443~Base Policy" 

terraform import "aviatrix_fqdn_tag_rule.fqdn_tag_rule_189" "cp-data-ore-prod-aviatrix-egress-gw-outbound-whitelist~api.us-2.crowdstrike.com~tcp~443~Base Policy" 


terraform import "aviatrix_gateway.gateway_1" "cp-data-ore-prod-aviatrix-egress-gw" 

terraform import "aviatrix_gateway.gateway_2" "cp-prod-fra-pci-aviatrix-egress-gw" 

terraform import "aviatrix_gateway.gateway_3" "cp-prod-mon-pci-aviatrix-egress-gw" 

terraform import "aviatrix_gateway.gateway_4" "cp-prod-ore-pci-aviatrix-gw" 


terraform import "aviatrix_remote_syslog.remote_syslog_1" "remote_syslog_0" 


terraform import "aviatrix_rbac_group_user_attachment.rbac_group_user_attachment_1" "admin~rajnesh.siwal" 

terraform import "aviatrix_rbac_group_user_attachment.rbac_group_user_attachment_2" "admin~sasi.reddy" 

terraform import "aviatrix_rbac_group_user_attachment.rbac_group_user_attachment_3" "admin~jordan.toor" 

terraform import "aviatrix_rbac_group_user_attachment.rbac_group_user_attachment_4" "read_only~raymond.mak" 

terraform import "aviatrix_rbac_group_user_attachment.rbac_group_user_attachment_5" "read_only~arvind.sharma" 

terraform import "aviatrix_rbac_group_user_attachment.rbac_group_user_attachment_6" "read_only~jashandeep.singh" 


terraform import "aviatrix_saml_endpoint.saml_endpoint_1" "chargepoint_okta" 


terraform import "aviatrix_splunk_logging.splunk_logging_1" "splunk_logging" 


terraform import "aviatrix_spoke_gateway.spoke_gateway_1" "cp-prod-fra-nos-aviatrix-spoke-gw" 

terraform import "aviatrix_spoke_gateway.spoke_gateway_2" "cp-prod-fra-pci-aviatrix-spoke-gw" 

terraform import "aviatrix_spoke_gateway.spoke_gateway_3" "cp-prod-mon-nos-aviatrix-spoke-gw" 

terraform import "aviatrix_spoke_gateway.spoke_gateway_4" "cp-prod-mon-pci-aviatrix-spoke-gw" 

terraform import "aviatrix_spoke_gateway.spoke_gateway_5" "cp-prod-ore-nos-aviatrix-spoke-gw" 

terraform import "aviatrix_spoke_gateway.spoke_gateway_6" "cp-prod-ore-pci-aviatrix-spoke-gw" 


terraform import "aviatrix_spoke_transit_attachment.spoke_transit_attachment_1" "cp-prod-fra-pci-aviatrix-spoke-gw~cp-prod-fra-pci-transit-aviatrix-hub-gw" 

terraform import "aviatrix_spoke_transit_attachment.spoke_transit_attachment_2" "cp-prod-ore-pci-aviatrix-spoke-gw~cp-prod-ore-transit-aviatrix-transit-hub-gw" 

terraform import "aviatrix_spoke_transit_attachment.spoke_transit_attachment_3" "cp-prod-fra-nos-aviatrix-spoke-gw~cp-prod-fra-pci-transit-aviatrix-hub-gw" 

terraform import "aviatrix_spoke_transit_attachment.spoke_transit_attachment_4" "cp-prod-mon-nos-aviatrix-spoke-gw~cp-prod-mon-transit-aviatrix-transit-hub-gw" 

terraform import "aviatrix_spoke_transit_attachment.spoke_transit_attachment_5" "cp-prod-ore-nos-aviatrix-spoke-gw~cp-prod-ore-transit-aviatrix-transit-hub-gw" 

terraform import "aviatrix_spoke_transit_attachment.spoke_transit_attachment_6" "cp-prod-mon-pci-aviatrix-spoke-gw~cp-prod-mon-transit-aviatrix-transit-hub-gw" 


terraform import "aviatrix_transit_gateway.transit_gateway_1" "cp-prod-fra-pci-transit-aviatrix-hub-gw" 

terraform import "aviatrix_transit_gateway.transit_gateway_2" "cp-prod-mon-transit-aviatrix-transit-hub-gw" 

terraform import "aviatrix_transit_gateway.transit_gateway_3" "cp-prod-ore-transit-aviatrix-transit-hub-gw" 


terraform import "aviatrix_trans_peer.trans_peer_1" "cp-prod-mon-nos-aviatrix-spoke-gw~cp-prod-mon-transit-aviatrix-transit-hub-gw~cp-prod-mon-transit-aviatrix-transit-hub-gw-to-transit-vgw-connection-tag" 

terraform import "aviatrix_trans_peer.trans_peer_2" "cp-prod-mon-nos-aviatrix-spoke-gw-hagw~cp-prod-mon-transit-aviatrix-transit-hub-gw-hagw~cp-prod-mon-transit-aviatrix-transit-hub-gw-to-transit-vgw-connection-tag" 

terraform import "aviatrix_trans_peer.trans_peer_3" "cp-prod-mon-pci-aviatrix-spoke-gw~cp-prod-mon-transit-aviatrix-transit-hub-gw~cp-prod-mon-transit-aviatrix-transit-hub-gw-to-transit-vgw-connection-tag" 

terraform import "aviatrix_trans_peer.trans_peer_4" "cp-prod-mon-pci-aviatrix-spoke-gw-hagw~cp-prod-mon-transit-aviatrix-transit-hub-gw-hagw~cp-prod-mon-transit-aviatrix-transit-hub-gw-to-transit-vgw-connection-tag" 

terraform import "aviatrix_trans_peer.trans_peer_5" "cp-prod-ore-nos-aviatrix-spoke-gw~cp-prod-ore-transit-aviatrix-transit-hub-gw~cp-prod-ore-transit-aviatrix-transit-gw-to-transit-vgw-connection-tag" 

terraform import "aviatrix_trans_peer.trans_peer_6" "cp-prod-ore-nos-aviatrix-spoke-gw-hagw~cp-prod-ore-transit-aviatrix-transit-hub-gw-hagw~cp-prod-ore-transit-aviatrix-transit-gw-to-transit-vgw-connection-tag" 

terraform import "aviatrix_trans_peer.trans_peer_7" "cp-prod-ore-pci-aviatrix-spoke-gw~cp-prod-ore-transit-aviatrix-transit-hub-gw~cp-prod-ore-transit-aviatrix-transit-gw-to-transit-vgw-connection-tag" 

terraform import "aviatrix_trans_peer.trans_peer_8" "cp-prod-ore-pci-aviatrix-spoke-gw-hagw~cp-prod-ore-transit-aviatrix-transit-hub-gw-hagw~cp-prod-ore-transit-aviatrix-transit-gw-to-transit-vgw-connection-tag" 


terraform import "aviatrix_tunnel.tunnel_1" "cp-prod-mon-pci-aviatrix-spoke-gw~cp-prod-mon-transit-aviatrix-transit-hub-gw" 

terraform import "aviatrix_tunnel.tunnel_2" "cp-prod-mon-nos-aviatrix-spoke-gw~cp-prod-mon-transit-aviatrix-transit-hub-gw" 

terraform import "aviatrix_tunnel.tunnel_3" "cp-prod-ore-pci-aviatrix-spoke-gw~cp-prod-ore-transit-aviatrix-transit-hub-gw" 

terraform import "aviatrix_tunnel.tunnel_4" "cp-prod-ore-nos-aviatrix-spoke-gw~cp-prod-ore-transit-aviatrix-transit-hub-gw" 


terraform import "aviatrix_vgw_conn.vgw_conn_1" "cp-prod-mon-transit-aviatrix-transit-hub-gw-to-transit-vgw-connection~vpc-0551f59a1b60c8b26" 

terraform import "aviatrix_vgw_conn.vgw_conn_2" "cp-prod-fra-transit-aviatrix-hub-gw-to-transit-vgw-connection~vpc-87085def" 

terraform import "aviatrix_vgw_conn.vgw_conn_3" "cp-prod-ore-transit-aviatrix-transit-gw-to-transit-vgw-connection~vpc-49a1cd30" 

