class DeletarCRM < SitePrism::Page
	
  #editar Tasks
  element :editataskes, "#grouptab_3"
  #submenu para editar
  element :clicatask, "#moduleTab_6_Tasks" 
  #seleciona para deletar
  element :seleciona_task, "#MassUpdate > div.list-view-rounded-corners > table > tbody > tr:nth-child(2) > td:nth-child(1) > input"
  #combo deletar
  element :bulk_action, "#delete_listview_top"
    

def deletar 
  
  editataskes.click
  clicatask.click
  seleciona_task.click
  bulk_action.click
 
end

end