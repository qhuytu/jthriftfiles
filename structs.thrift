namespace java com.qhuytu.jthriftfiles.structs

enum Tag {
    DEFAULT,
    WORK,
    FRIEND,
    FAMILY
}

struct Note {
    1: i32 id,
    2: string content,
    3: bool isFinish,
    4: Tag tag
}
