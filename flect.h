#ifndef _FLECT_H_
#define _FLECT_H_

static struct fuse_operations *flect_get_fops (void);
int flect_init (char *path);
int flect_statfs(const char *path, struct statvfs *stbuf);

#endif /* _FLECT_H_ */
