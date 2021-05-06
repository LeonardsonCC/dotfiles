nmap <Leader>pmd :!bin/magento setup:di:compile<CR>
nmap <Leader>pmr :!bin/magento setup:upgrade && bin/magento setup:di:compile<CR>
nmap <Leader>pmc :!bin/magento c:c && bin/magento c:f<CR>
nmap <Leader>pms :!bin/magento setup:static-content:deploy en_US pt_BR -f<CR>
nmap <Leader>pmb :!bin/magento indexer:reindex && bin/magento setup:di:compile && php bin/magento setup:upgrade && php bin/magento setup:static-content:deploy en_US pt_BR -f && php bin/magento cache:flush && php bin/magento cache:clean<CR>
