namespace java com.qhuytu.jthriftfiles.services

include "structs.thrift"
include "exceptions.thrift"

const string NOTESERVICE = "NoteService"
service NoteService {
    void addNote(1:structs.Note note) throws (1:exceptions.InvalidTypeException ite),
    map<i32, structs.Note> getNotes(),
    structs.Note getNote(1:i32 id) throws (1:exceptions.CanNotFoundException cnfe),
    void updateNote(1:structs.Note note) throws (1:exceptions.InvalidTypeException ite, 2:exceptions.CanNotFoundException cnfe),
    void deleteNote(1:i32 id) throws (1:exceptions.CanNotFoundException cnfe),
    void triggerNote(1:i32 id) throws (1:exceptions.CanNotFoundException cnfe)
}
