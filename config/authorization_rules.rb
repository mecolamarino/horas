authorization do
  role :guest do
  	has_permission_on :user_sessions, :to => [:create, :delete]
	has_permission_on :users, :to => [:create]
  end
  role :client do
        has_permission_on [:users,:user_sessions,:clients,:owners,:home,:companies], :to => :read
	has_permission_on [:users,:user_sessions],  :to => :destroy
	has_permission_on [:hours], :to => [:update, :read]
  end
  role :owner do
        has_permission_on [:users,:user_sessions,:clients,:owners,:hours,:home,:companies,:proyects,:computers,:printers,:marks,:memories,:microprocessors,:screens,:motherboards,:sizes,:types,:systems,:scanners,:disks], :to => :manage   
  end
  
end
 
privileges do
  # default privilege hierarchies to facilitate RESTful Rails apps
  privilege :manage, :includes => [:create, :read, :update, :delete]
  privilege :read, :includes => [:index, :show]
  privilege :create, :includes => :new
  privilege :update, :includes => :edit
  privilege :delete, :includes => :destroy
end
