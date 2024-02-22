// Buffering - process of temporarily storing data in main memory that's passing between
// a process and a device or file.
// Buffering improves the throughput of I/O operations, which often have high latencies. 
//
// When a program requests to write to block-oriented devices like disks, the driver can cache
// the data  in memory until it has accumulated enough data for one or more device blocks, at which
// point it writes the data all at once to the disk, improving throughput.
// This strategy is called 'flushing' the output buffer.
//
// Like device drivers, streams often maintain own I/O buffers. Typically, one input buffer for 
// each file that the program wants to read from, and one output buffer for each it wants to 
// write to.
//
// Stream three states:
// 1. Unbuffered : Intended to appear from the source or at the destination ASAP.
// 			Ex) error reporting, logging
// 2. Fully buffered : Intended to be transmitted to or from the host environment as a block 
// 			when a buffer is filled. Normally used for streams in file I/O.
// 3. Line buffered : Intended to be transmitted to or from the host environment as a block
// 			when a newline is encountered. Ex) terminals, interactive devices
//
//
// Predefined Streams
extern FILE *stdin; // fully buffered
extern FILE *stdout; // fully buffered
extern FILE *stderr; // not fully buffered
		 
// Text and Binary Streams
// Since there are different newline conventions for text files, it might be easy to use binary
// file with binary streams. But it's inconvenient.
//
//
