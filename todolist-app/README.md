# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

  <!--<li><%= category.title  %></li>
  <div class="card">
    <ul>
      <li>
        <%= task.title  %>
        <% unless task.deadline.nil? %>
          , to read: <%= task.deadline.strftime('%D')  %>
        <% end %>
      </li>

    </ul>
  </div>-->

<!-- 
@import "font-awesome"; -->
<!-- 
// document.getElementById("").addEventListener('ajax:success', function(event){ -->



let checkbox_id = document.querySelector("input#<%= task.id %>");
checkbox_id.addeventlistener('ajax:success', function(e){
    if (e.getAttribute("data-params") == "<%= task.id %>&status=false"){
        e.setAttribute("data-params", "<%= task.id %>&status=true");
    }
    else if (e.getAttribute("data-params") == "<%= task.id %>&status=true"){
            e.setAttribute("data-params", "<%= task.id %>&status=false");
    }
})


<!-- ajaxSuccess(function(){
    type: "POST",
    url: "emails_path",
    data: {object:"<%=Faker::Internet.safe_email %>"};
}
    
}) -->




 def index
    emails = Email.all
  end

  def new

  end
  def create
    Email.new(object: Faker::Internet.safe_email)
    respond_to do |format|
      format.html {}
      format.js {}

    end
    
  end




  <h1>Emails#index</h1>
<p>Find me in app/views/emails/index.html.erb</p>
<div class="container">
    <div class="row">
    <button id="btn-create-email" >
    <%= button_to "Add email", emails_path, :id => "btn-create-email",
      :class => "btn btn-primary", :method => :post, remote: true %>
        <div class="col-6">
            <div id="liste-group-email" class="list-group">
                <% @emails.each do |email|%>
                <%= link_to email.object, root_path method: "post", id: email.id, class: "list-group-item list-group-item-action"  %>
                <% end %>
                <a href="#" class="list-group-item list-group-item-action">Dapibus ac facilisis in</a>
                <a href="#" class="list-group-item list-group-item-action disabled">Vestibulum at eros</a>
            </div><!-- list-group -->
        </div><!-- col-6 -->
        <div class="col-6">
            <div class="list-group">
                <% @emails.each do |email|%>
                    content_tag(:p, <%= email.body%>)
                <% end %>
                <a href="#" class="list-group-item list-group-item-action">Dapibus ac facilisis in</a>
                <a href="#" class="list-group-item list-group-item-action disabled">Vestibulum at eros</a>
            </div><!-- list-group -->
        </div><!-- col-6 -->
    </div><!-- row -->
</div>><!-- container -->



alert("L ajax create email a le bon chemin!");
let btnCreateEmail = querySelector("button#btn-create-email");
let AnchorEmailID= $("a#<%= email.id %>");
let ListGroupEmail = $("div#liste-group-email");
let btnCreateEmail = $("button#btn-create-email");
btnCreateEmail.addEventListner(ajax.success, function(){
ListGroupEmail.replaceChild("<%=j render "email",  object: Faker::Internet.safe_email  %>", AnchorEmailID );
})



<%= link_to email.object, root_path method: "get", id: email.id, class: "list-group-item list-group-item-action"  %>






                <% @emails.each do |email|%>
                <%= link_to email.object, root_path, id: email.id, class: "list-group-item list-group-item-action"  %>
                <% end %>
                <a href="#" class="list-group-item list-group-item-action">Dapibus ac facilisis in</a>
                <a href="#" class="list-group-item list-group-item-action disabled">Vestibulum at eros</a>
            </div><!-- list-group -->
        </div><!-- col-6 -->
        <div class="col-6">
            <div class="list-group">
                <% @emails.each do |email|%>
                   <%= content_tag(:p, email.body, class: "list-group-item list-group-item-action")%>
                <% end %>
                <a href="#" class="list-group-item list-group-item-action">Dapibus ac facilisis in</a>
                <a href="#" class="list-group-item list-group-item-action disabled">Vestibulum at eros</a>
            </div><!-- list-group -->
        </div><!-- col-6 -->




         <div class="col-6">
            <div id="liste-group-email" class="list-group">
            <tbody class="email_object list-group">
                <% @emails.each do |email| %>
                <tr class="list-group-item list-group-item-action">
                    <td><%= email.object %></td><br>
                <% end %>
                </tr>
            </tbody>


            document.querySelector("#show-email-div").remove();
document.querySelector("#table-email > tbody#tbody-<%= email.id %>").remove();