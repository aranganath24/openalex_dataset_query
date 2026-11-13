cu_researcher_dataset_citations<-
  cu_datasets_comprehensive %>% 
  separate_longer_delim(cols=c(cu_authors_oa_id, cu_authors_name, id), delim="; ") %>%
  mutate(cu_authors_oa_id = trimws(cu_authors_oa_id)) %>%
  distinct() %>% 
  group_by(cu_authors_oa_id)  %>% 
  summarise(
    cu_authors_name=first(cu_authors_name),
    number_of_dataset_citations=sum(cited_by_count),
    .groups="drop") %>%
  filter(cu_authors_oa_id!="") %>% 
  arrange(desc(number_of_dataset_citations))


CU researchers with most cited datasets

CU researchers with largest quantity of datasets

frequent external collaborators on CU datasets

institutions of most frequent collaborators with CU authors 

take keywords and make wordcloud

https://publishing.escholarship.umassmed.edu/jeslib/article/id/1170/