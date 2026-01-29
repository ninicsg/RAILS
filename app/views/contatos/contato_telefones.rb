<h1> 
    Telefones de <%= @contato.nome %>
</h1>

<p>

<h1>Telefones</h1>

<% if @telefones.present? %>

  <table class="tabela">
    <thead>
      <tr>
        <th>ID</th>
        <th>Numero</th>
        <th>Eh principal</th>
        <th>Editar</th>
        <th>Excluir</th>
      </tr>
    </thead>

    <tbody>
      <% @contatos.each do |contato| %>
        <tr>
          <td><%= telefone.id %></td>
          <td><%= link_to telefone.telefone, telefone_path(telefone) %></td>
          <td><%= contato.email %></td>
          <td>
            <%= link_to "Editar", edit_telefone_path(id: telefone.id, contato_id: @contato.id ),class: "btn-edit" %>
          </td>
          <td>
            <%= link_to "Excluir",
              telefone_path(telefone),
              method: :delete,
              data: { confirm: "Tem certeza?" },
              class: "btn-delete" %>
          </td>

        </tr>
      <% end %>
    </tbody>
  </table>

<% else %>
  <p class="empty">
  Não há telefones cadastrados 
  </p>
<% end %>
<p>
<%= link_to "Voltar", contato_path, class: "btn-voltar" %>
</p>
