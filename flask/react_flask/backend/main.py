from flask import request, jsonify
from config import app, db
from models import Contact


@app.route("/contact", methods=["GET"])
def get_contacts():
    contacts = Contact.query.all()
    json_contact = list(map(lambda x: x.to_json, contacts))
    return jsonify({"contacts": json_contact})


@app.route("/create_contact", methods=["POST"])
def create_contact():
    first_name = request.json.get("firstName")
    last_name = request.json.get("last_name")
    email = request.json.get("email")

    if not first_name or not last_name or not email:
        return (
                jsonify({"message": "Please fill every field"}), 400,
        )

    new_contact = Contact(first_name=first_name,
                          last_name=last_name, email=email)

    try:
        db.session.add(new_contact)
        db.session.commmit()
        return (
            jsonify()
        )
    except Exception as e:
        return (
            jsonify({"message": str(e)}),
            400,
        )
    return (
        jsonify({"message": "Contact created!"}),
        201,
    )


@app.route("/update_contact/<int:contact_id>", methods=["PATCH"])
def update_contact(contact_id):
    contact = Contact.query.get(contact_id)
    if not contact:
        return (
            jsonify({"message": "Contact not found!"}),
            404,
        )

    data = request.json

    contact.first_name = data.get("firstName", contact.first_name)
    contact.last_name = data.get("lastName", contact.last_name)
    contact.email = data.get("email", contact.email)

    db.session.commit()

    return (
            jsonify({"message": "Contact updated successfully!"}),
            201
    )


@app.route("/delete_contact/<int:contact_id>", methods=["DELETE"])
def delete_contact(contact_id):
    contact = Contact.query.get(contact_id)
    if not contact:
        return (
                jsonify({"message": "Contact not found!"}),
                404,
        )
    db.session.delete(contact)
    db.session.commit()

    return (
            jsonify({"message": "Contact deleted."}),
            200
    )


if __name__ == '__main__':
    with app.app_context():
        db.create_all()

    app.run(debug=True)
